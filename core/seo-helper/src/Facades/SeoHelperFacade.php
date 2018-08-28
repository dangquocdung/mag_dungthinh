<?php

namespace Botble\SeoHelper\Facades;

use Botble\SeoHelper\SeoHelper;
use Illuminate\Support\Facades\Facade;

/**
 * Class SeoHelperFacade
 * @package Botble\SEO\Facade
 * @author QuocDung Dang
 * @since 02/12/2015 14:08 PM
 */
class SeoHelperFacade extends Facade
{

    /**
     * @return string
     * @author QuocDung Dang
     */
    protected static function getFacadeAccessor()
    {
        return SeoHelper::class;
    }
}
