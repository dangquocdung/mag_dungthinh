<?php

namespace Botble\Gallery;

use Artisan;
use Botble\Base\Interfaces\PluginInterface;
use Botble\Base\Supports\Helper;
use Botble\Gallery\Providers\GalleryServiceProvider;
use Schema;

class Plugin implements PluginInterface
{
    /**
     * @author QuocDung Dang
     */
    public static function activate()
    {
        Artisan::call('migrate', [
            '--force' => true,
            '--path' => 'plugins/gallery/database/migrations',
        ]);

        Artisan::call('vendor:publish', [
            '--force' => true,
            '--tag' => 'public',
            '--provider' => GalleryServiceProvider::class,
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
        Helper::removePluginAssets('galleries');

        Schema::dropIfExists('galleries');
        Schema::dropIfExists('gallery_meta');
    }
}
