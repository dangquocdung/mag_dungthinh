<?php

namespace Botble\Page\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface PageInterface extends RepositoryInterface
{

    /**
     * @return mixed
     * @author QuocDung Dang
     */
    public function getDataSiteMap();

    /**
     * @param $limit
     * @author QuocDung Dang
     */
    public function getFeaturedPages($limit);

    /**
     * @param $array
     * @param array $select
     * @return mixed
     * @author QuocDung Dang
     */
    public function whereIn($array, $select = []);

    /**
     * @param $query
     * @param int $limit
     * @return mixed
     * @author QuocDung Dang
     */
    public function getSearch($query, $limit = 10);

    /**
     * @param bool $active
     * @return mixed
     * @author QuocDung Dang
     */
    public function getAllPages($active = true);
}
