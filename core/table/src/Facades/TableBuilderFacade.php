<?php

namespace Botble\Table\Facades;

use Illuminate\Support\Facades\Facade;

class TableBuilderFacade extends Facade
{
    /**
     * @return string
     * @author QuocDung Dang
     */
    protected static function getFacadeAccessor()
    {
        return 'table-builder';
    }
}
