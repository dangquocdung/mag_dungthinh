<?php

namespace Botble\Menu\Models;

use Eloquent;

class Menu extends Eloquent
{

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'menus';

    /**
     * @return mixed
     * @author QuocDung Dang
     */
    public function menuNodes()
    {
        return $this->hasMany(MenuNode::class, 'menu_id');
    }
}
