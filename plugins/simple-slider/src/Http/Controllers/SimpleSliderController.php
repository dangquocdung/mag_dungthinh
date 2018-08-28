<?php

namespace Botble\SimpleSlider\Http\Controllers;

use Assets;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\SimpleSlider\Forms\SimpleSliderForm;
use Botble\SimpleSlider\Http\Requests\SimpleSliderRequest;
use Botble\SimpleSlider\Repositories\Interfaces\SimpleSliderInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\SimpleSlider\Tables\SimpleSliderTable;

class SimpleSliderController extends BaseController
{
    /**
     * @var SimpleSliderInterface
     */
    protected $simpleSliderRepository;

    /**
     * SimpleSliderController constructor.
     * @param SimpleSliderInterface $simpleSliderRepository
     * @author QuocDung Dang
     */
    public function __construct(SimpleSliderInterface $simpleSliderRepository)
    {
        $this->simpleSliderRepository = $simpleSliderRepository;
    }

    /**
     * Display all simple-slider
     * @param SimpleSliderTable $dataTable
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author QuocDung Dang
     * @throws \Throwable
     */
    public function getList(SimpleSliderTable $dataTable)
    {

        page_title()->setTitle(trans('plugins.simple-slider::simple-slider.menu'));

        return $dataTable->renderTable(['title' => trans('plugins.simple-slider::simple-slider.list')]);
    }

    /**
     * Show create form
     * @param FormBuilder $formBuilder
     * @return string
     * @author QuocDung Dang
     */
    public function getCreate(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins.simple-slider::simple-slider.create'));

        return $formBuilder->create(SimpleSliderForm::class)->removeMetaBox('slider-items')->renderForm();
    }

    /**
     * Insert new SimpleSlider into database
     *
     * @param SimpleSliderRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @author QuocDung Dang
     */
    public function postCreate(SimpleSliderRequest $request, BaseHttpResponse $response)
    {
        $simple_slider = $this->simpleSliderRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(SIMPLE_SLIDER_MODULE_SCREEN_NAME, $request, $simple_slider));

        return $response
            ->setPreviousUrl(route('simple-slider.list'))
            ->setNextUrl(route('simple-slider.edit', $simple_slider->id))
            ->setMessage(trans('core.base::notices.create_success_message'));
    }

    /**
     * Show edit form
     *
     * @param $id
     * @param FormBuilder $formBuilder
     * @return string
     * @author QuocDung Dang
     */
    public function getEdit($id, FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins.simple-slider::simple-slider.edit') . ' #' . $id);
        Assets::addStylesheetsDirectly(['vendor/core/plugins/simple-slider/css/simple-slider-admin.css'])
            ->addJavascript(['blockui', 'sortable'])
            ->addJavascriptDirectly(['vendor/core/plugins/simple-slider/js/simple-slider-admin.js']);

        $simple_slider = $this->simpleSliderRepository->findById($id);
        return $formBuilder->create(SimpleSliderForm::class)->setModel($simple_slider)->renderForm();
    }

    /**
     * @param $id
     * @param SimpleSliderRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @author QuocDung Dang
     */
    public function postEdit($id, SimpleSliderRequest $request, BaseHttpResponse $response)
    {
        $simple_slider = $this->simpleSliderRepository->findById($id);
        $simple_slider->fill($request->input());

        $this->simpleSliderRepository->createOrUpdate($simple_slider);

        event(new UpdatedContentEvent(SIMPLE_SLIDER_MODULE_SCREEN_NAME, $request, $simple_slider));

        return $response
            ->setPreviousUrl(route('simple-slider.list'))
            ->setMessage(trans('core.base::notices.update_success_message'));
    }

    /**
     * @param Request $request
     * @param $id
     * @param BaseHttpResponse $response
     * @return array|BaseHttpResponse
     * @author QuocDung Dang
     */
    public function getDelete(Request $request, $id, BaseHttpResponse $response)
    {
        try {
            $simple_slider = $this->simpleSliderRepository->findById($id);
            $this->simpleSliderRepository->delete($simple_slider);

            event(new DeletedContentEvent(SIMPLE_SLIDER_MODULE_SCREEN_NAME, $request, $simple_slider));

            return $response->setMessage(trans('core.base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response->setError(true)->setMessage(trans('core.base::notices.cannot_delete'));
        }
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return array|BaseHttpResponse|\Illuminate\Http\JsonResponse
     * @author QuocDung Dang
     */
    public function postDeleteMany(Request $request, BaseHttpResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response->setError(true)->setMessage(trans('core.base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $simple_slider = $this->simpleSliderRepository->findOrFail($id);
            $this->simpleSliderRepository->delete($simple_slider);
            event(new DeletedContentEvent(SIMPLE_SLIDER_MODULE_SCREEN_NAME, $request, $simple_slider));
        }

        return $response->setMessage(trans('core.base::notices.delete_success_message'));
    }
}
