<?php

namespace Botble\Blog\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface TagInterface extends RepositoryInterface
{

    /**
     * @return mixed
     * @author QuocDung Dang
     */
    public function getDataSiteMap();

    /**
     * @param $limit
     * @return mixed
     * @author QuocDung Dang
     */
    public function getPopularTags($limit);

    /**
     * @param bool $active
     * @return mixed
     * @author QuocDung Dang
     */
    public function getAllTags($active = true);
}
