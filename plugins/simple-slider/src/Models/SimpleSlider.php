<?php

namespace Botble\SimpleSlider\Models;

use Eloquent;

/**
 * Botble\SimpleSlider\Models\SimpleSlider
 *
 * @mixin \Eloquent
 */
class SimpleSlider extends Eloquent
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'simple_sliders';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'key',
        'description',
        'status',
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function slider_items()
    {
        return $this->hasMany(SimpleSliderItem::class);
    }
}
