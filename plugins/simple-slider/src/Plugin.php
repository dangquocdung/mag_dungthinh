<?php

namespace Botble\SimpleSlider;

use Artisan;
use Schema;
use Botble\Base\Interfaces\PluginInterface;

class Plugin implements PluginInterface
{
    /**
     * @author QuocDung Dang
     */
    public static function activate()
    {
        Artisan::call('migrate', [
            '--force' => true,
            '--path' => 'plugins/simple-slider/database/migrations',
        ]);
    }

    /**
     * @author QuocDung Dang
     */
    public static function deactivate()
    {

    }

    /**
     * @author QuocDung Dang
     */
    public static function remove()
    {
        Schema::dropIfExists('simple-sliders');
    }
}