<?php

namespace Botble\Support\Providers;

use File;
use Illuminate\Support\ServiceProvider;

class SupportServiceProvider extends ServiceProvider
{
    /**
     * @var \Illuminate\Foundation\Application
     */
    protected $app;

    /**
     * @author QuocDung Dang
     */
    public function register()
    {
        $this->autoloadHelpers(__DIR__ . '/../../helpers');
    }

    /**
     * @author QuocDung Dang
     */
    public function boot()
    {
    }

    /**
     * Load module's helpers
     * @param $directory
     * @author QuocDung Dang
     * @since 2.0
     */
    public function autoloadHelpers($directory)
    {
        $helpers = File::glob($directory . '/*.php');
        foreach ($helpers as $helper) {
            File::requireOnce($helper);
        }
    }
}
