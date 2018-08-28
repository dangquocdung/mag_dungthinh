<?php

namespace Botble\Facebook\Providers;

use Botble\Base\Events\SessionStarted;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Facebook\Widgets\FacebookWidget;
use Event;
use Illuminate\Support\ServiceProvider;
use Botble\Base\Supports\Helper;
use SammyK\LaravelFacebookSdk\LaravelFacebookSdkServiceProvider;

class FacebookServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    /**
     * @var \Illuminate\Foundation\Application
     */
    protected $app;

    /**
     * @author QuocDung Dang
     */
    public function register()
    {
        Helper::autoload(__DIR__ . '/../../helpers');
        $this->app->register(LaravelFacebookSdkServiceProvider::class);
    }

    /**
     * @author QuocDung Dang
     */
    public function boot()
    {
        $this->setIsInConsole($this->app->runningInConsole())
            ->setNamespace('plugins/facebook')
            ->loadAndPublishConfigurations(['general', 'permissions'])
            ->loadAndPublishTranslations()
            ->loadRoutes()
            ->loadAndPublishViews()
            ->publishAssetsFolder()
            ->publishPublicFolder();

        if (setting('facebook_enable')) {
            $this->app->register(HookServiceProvider::class);
            $this->app->register(EventServiceProvider::class);
        }

        Event::listen(SessionStarted::class, function () {
            dashboard_menu()->registerItem([
                'id' => 'cms-plugins-facebook',
                'priority' => 3,
                'parent_id' => 'cms-core-settings',
                'name' => __('Facebook'),
                'icon' => null,
                'url' => route('facebook.settings'),
                'permissions' => ['facebook.settings'],
            ]);
        });

        if (defined('POST_MODULE_SCREEN_NAME')) {
            config()->set('facebook.screen_supported_auto_post', array_merge(config('facebook.screen_supported_auto_post', []), [POST_MODULE_SCREEN_NAME]));
        }

        if (defined('PRODUCT_MODULE_SCREEN_NAME')) {
            config()->set('facebook.screen_supported_auto_post', array_merge(config('facebook.screen_supported_auto_post', []), [PRODUCT_MODULE_SCREEN_NAME]));
        }

        $this->app->booted(function () {
            register_widget(FacebookWidget::class);
        });
    }
}
