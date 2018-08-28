<?php

namespace Botble\SimpleSlider\Providers;

use Botble\SimpleSlider\Repositories\Interfaces\SimpleSliderInterface;
use Illuminate\Support\ServiceProvider;
use Theme;

class HookServiceProvider extends ServiceProvider
{
    /**
     * @var \Illuminate\Foundation\Application
     */
    protected $app;

    /**
     * @author QuocDung Dang
     */
    public function boot()
    {
        Theme::asset()->container('footer')->add('owl.carousel', 'vendor/core/plugins/simple-slider/packages/owl-carousel/owl.carousel.css');
        Theme::asset()->container('footer')->add('simple-slider-css', 'vendor/core/plugins/simple-slider/css/simple-slider.css');
        Theme::asset()->container('footer')->add('carousel', 'vendor/core/plugins/simple-slider/packages/owl-carousel/owl.carousel.js', ['jquery']);
        Theme::asset()->container('footer')->add('simple-slider-js', 'vendor/core/plugins/simple-slider/js/simple-slider.js', ['jquery']);

        add_shortcode('simple-slider', __('Simple Slider'), __('Add a simple slider'), [$this, 'render']);
    }

    /**
     * @param $shortcode
     * @return null
     * @author QuocDung Dang
     */
    public function render($shortcode)
    {
        $simple_slider = app(SimpleSliderInterface::class)->getFirstBy([
            'key' => $shortcode->key,
            'status' => 1,
        ]);

        $simple_slider = apply_filters(BASE_FILTER_BEFORE_GET_SINGLE, $simple_slider, app(SimpleSliderInterface::class)->getModel(), SIMPLE_SLIDER_MODULE_SCREEN_NAME);

        if (empty($simple_slider)) {
            return null;
        }

        return view('plugins.simple-slider::sliders', ['sliders' => $simple_slider->slider_items]);
    }
}
