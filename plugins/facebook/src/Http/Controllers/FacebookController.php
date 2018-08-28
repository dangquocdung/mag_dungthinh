<?php

namespace Botble\Facebook\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Facebook\Http\Requests\UpdateSettingsRequest;
use Carbon\Carbon;
use Exception;
use SammyK\LaravelFacebookSdk\LaravelFacebookSdk;

class FacebookController extends BaseController
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author QuocDung Dang
     */
    public function getSettings()
    {
        page_title()->setTitle(trans('plugins.facebook::facebook.settings.page_title'));

        $list_pages = [];
        $pages = setting('facebook_list_pages', []);
        if (!empty($pages)) {
            $pages = json_decode($pages, true);
            foreach ($pages as $page) {
                $list_pages[$page['id']] = $page['name'];
            }
        }

        return view('plugins.facebook::settings', compact('list_pages'));
    }

    /**
     * @param UpdateSettingsRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @author QuocDung Dang
     */
    public function postSettings(UpdateSettingsRequest $request, BaseHttpResponse $response)
    {
        foreach ($request->input('settings', []) as $key => $value) {
            setting()->set($key, $value);
        }

        if (setting('facebook_access_token') == null) {
            setting()->set('facebook_token_expire_date');
            setting()->set('facebook_list_pages', json_encode([]));
        }

        setting()->save();

        return $response
            ->setNextUrl(route('facebook.settings'))
            ->setMessage(trans('core.base::notices.update_success_message'));
    }

    /**
     * @param LaravelFacebookSdk $facebook
     * @return BaseHttpResponse
     * @author QuocDung Dang
     */
    public function getAccessToken(LaravelFacebookSdk $facebook, BaseHttpResponse $response)
    {
        return $response->setNextUrl($facebook->getLoginUrl(['email', 'manage_pages', 'publish_pages', 'public_profile'], route('facebook.callback')));
    }

    /**
     * @param LaravelFacebookSdk $facebook
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @author QuocDung Dang
     */
    public function getHandleCallback(LaravelFacebookSdk $facebook, BaseHttpResponse $response)
    {
        // Obtain an access token.
        try {
            $token = $facebook->getAccessTokenFromRedirect(route('facebook.callback'));
        } catch (Exception $ex) {
            return $response
                ->setError(true)
                ->setNextUrl(route('facebook.settings'))
                ->setMessage($ex->getMessage());
        }

        // Access token will be null if the user denied the request
        // or if someone just hit this URL outside of the OAuth flow.
        if (!$token) {
            // Get the redirect helper
            $helper = $facebook->getRedirectLoginHelper();

            if (!$helper->getError()) {
                return $response
                    ->setError(true)
                    ->setNextUrl(route('facebook.settings'))
                    ->setMessage(__('Unauthorized action.'));
            }
            return $response
                ->setError(true)
                ->setNextUrl(route('facebook.settings'))
                ->setMessage(__('You did not approve Facebook app to get token'));
        }

        if (!$token->isLongLived()) {
            // OAuth 2.0 client handler
            $oauth_client = $facebook->getOAuth2Client();

            // Extend the access token.
            try {
                $token = $oauth_client->getLongLivedAccessToken($token);
            } catch (Exception $ex) {
                return $response
                    ->setError(true)
                    ->setNextUrl(route('facebook.settings'))
                    ->setMessage($ex->getMessage());
            }
        }

        try {
            $pages = $facebook->get('/me/accounts', $token)->getBody();
        } catch (Exception $ex) {
            return $response
                ->setError(true)
                ->setNextUrl(route('facebook.settings'))
                ->setMessage($ex->getMessage());
        }

        $facebook->setDefaultAccessToken($token);

        setting()->set('facebook_access_token', $token);
        setting()->set('facebook_list_pages', null);
        if (!empty($pages)) {
            $pages = array_get(json_decode($pages, true), 'data', []);
            if (count($pages) > 0) {
                setting()->set('facebook_list_pages', json_encode($pages));
                if (setting('facebook_page_id') == null) {
                    setting()->set('facebook_page_id', $pages[0]['id']);
                }
            }
        }
        setting()->set('facebook_token_expire_date', Carbon::now()->addDays(60)->getTimestamp());
        setting()->save();
        return $response
            ->setNextUrl(route('facebook.settings'))
            ->setMessage(__('Get Facebook access token successfully!'));
    }

    /**
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @author QuocDung Dang
     */
    public function getRemoveAccessToken(BaseHttpResponse $response)
    {
        setting()->set('facebook_access_token');
        setting()->set('facebook_token_expire_date');
        setting()->set('facebook_list_pages', json_encode([]));
        setting()->save();

        return $response
            ->setNextUrl(route('facebook.settings'))
            ->setMessage(trans('core.base::notices.update_success_message'));
    }
}
