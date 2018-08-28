<?php

namespace Theme\DungThinh\Http\Controllers;

use Illuminate\Routing\Controller;

class DungThinhController extends Controller
{
    /**
     * @return string
     * @author QuocDung Dang
     */
    public function getTest()
    {
        // return Theme::scope('test')->render(); You can create a view (public/themes/ripple/views/test.blade.php) to show data.
        return 'This is a test route';
    }
}
