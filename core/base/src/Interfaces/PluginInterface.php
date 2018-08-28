<?php

namespace Botble\Base\Interfaces;

interface PluginInterface
{

    /**
     * @author QuocDung Dang
     */
    public static function activate();

    /**
     * @author QuocDung Dang
     */
    public static function deactivate();

    /**
     * @author QuocDung Dang
     */
    public static function remove();
}
