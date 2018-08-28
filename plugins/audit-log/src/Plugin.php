<?php

namespace Botble\AuditLog;

use Artisan;
use Botble\Base\Interfaces\PluginInterface;
use Schema;

class Plugin implements PluginInterface
{

    /**
     * @return array
     * @author QuocDung Dang
     */
    public static function permissions()
    {
        return [];
    }

    /**
     * @author QuocDung Dang
     */
    public static function activate()
    {
        Artisan::call('migrate', [
            '--force' => true,
            '--path' => 'plugins/audit-log/database/migrations',
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
        Schema::dropIfExists('audit_history');
    }
}
