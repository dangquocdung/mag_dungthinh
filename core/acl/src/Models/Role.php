<?php

namespace Botble\ACL\Models;

use Botble\ACL\Roles\EloquentRole;
use Illuminate\Database\Eloquent\SoftDeletes;

class Role extends EloquentRole
{
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'roles';

    /**
     * The date fields for the model.clear
     *
     * @var array
     */
    protected $dates = [
        'created_at',
        'updated_at',
    ];

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'slug',
        'permissions',
        'description',
        'is_default',
        'created_by',
        'updated_by',
    ];

    /**
     * @return mixed
     * @author QuocDung Dang
     */
    public function users()
    {
        return $this->belongsToMany(User::class, 'role_users', 'role_id', 'user_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     * @author QuocDung Dang
     */
    public function userCreated()
    {
        return $this->belongsTo(User::class, 'created_by')->withDefault();
    }
}
