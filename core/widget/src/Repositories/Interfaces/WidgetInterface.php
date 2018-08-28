<?php

namespace Botble\Widget\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface WidgetInterface extends RepositoryInterface
{
    /**
     * Get all theme widgets
     * @param string $theme
     * @return mixed
     * @author QuocDung Dang
     */
    public function getByTheme($theme);
}
