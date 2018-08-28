<?php

namespace Botble\Backup\Providers;

use Illuminate\Support\ServiceProvider;

class HookServiceProvider extends ServiceProvider
{

    /**
     * @author QuocDung Dang
     */
    public function boot()
    {
        if (app()->environment() == 'demo') {
            add_filter(DASHBOARD_FILTER_ADMIN_NOTIFICATIONS, [$this, 'registerAdminAlert'], 5, 1);
        }
    }

    /**
     * @param string $alert
     * @return string
     * @author QuocDung Dang
     * @throws \Throwable
     */
    public function registerAdminAlert($alert)
    {
        return $alert . view('plugins.backup::partials.admin-alert')->render();
    }
}
