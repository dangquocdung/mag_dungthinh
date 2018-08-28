<?php

use Botble\Menu\Repositories\Interfaces\MenuInterface;

if (!function_exists('get_all_menus')) {
    /**
     * @return mixed
     * @author QuocDung Dang
     */
    function get_all_menus()
    {
        return app(MenuInterface::class)->all();
    }
}
