<?php

namespace Botble\Dashboard\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface DashboardWidgetSettingInterface extends RepositoryInterface
{
    /**
     * @return mixed
     * @author QuocDung Dang
     * @since 2.1
     */
    public function getListWidget();
}
