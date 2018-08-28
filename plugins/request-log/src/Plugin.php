<?php

namespace Botble\RequestLog;

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
            '--path' => 'plugins/request-log/database/migrations',
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
        Schema::dropIfExists('request_logs');
    }
}
