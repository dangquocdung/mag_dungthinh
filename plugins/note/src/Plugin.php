<?php

namespace Botble\Note;

use Artisan;
use Botble\Base\Interfaces\PluginInterface;
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
            '--path' => 'plugins/note/database/migrations',
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
        Schema::dropIfExists('notes');
    }
}
