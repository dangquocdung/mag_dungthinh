<?php

namespace Botble\Blog\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface PostInterface extends RepositoryInterface
{
    /**
     * @param int $limit
     * @return mixed
     * @author QuocDung Dang
     */
    public function getFeatured($limit = 5);

    /**
     * @param array $selected
     * @param int $limit
     * @return mixed
     * @author QuocDung Dang
     */
    public function getListPostNonInList(array $selected = [], $limit = 7);

    /**
     * @param $category
     * @param int $paginate
     * @param int $limit
     * @return mixed
     * @author QuocDung Dang
     */
    public function getByCategory($category, $paginate = 12, $limit = 0);

    /**
     * @param $user_id
     * @param int $limit
     * @return mixed
     * @author QuocDung Dang
     */
    public function getByUserId($user_id, $limit = 6);

    /**
     * @return mixed
     * @author QuocDung Dang
     */
    public function getDataSiteMap();

    /**
     * @param $tag
     * @param int $paginate
     * @return mixed
     * @author QuocDung Dang
     */
    public function getByTag($tag, $paginate = 12);

    /**
     * @param $id
     * @param int $limit
     * @return mixed
     * @author QuocDung Dang
     */
    public function getRelated($id, $limit = 3);

    /**
     * @param int $limit
     * @param int $category_id
     * @return mixed
     * @author QuocDung Dang
     */
    public function getRecentPosts($limit = 5, $category_id = 0);

    /**
     * @param $query
     * @param int $limit
     * @param int $paginate
     * @return mixed
     * @author QuocDung Dang
     */
    public function getSearch($query, $limit = 10, $paginate = 10);

    /**
     * @param bool $active
     * @return mixed
     * @author QuocDung Dang
     */
    public function getAllPosts($active = true);

    /**
     * @param $limit
     * @param array $args
     * @return mixed
     * @author QuocDung Dang
     */
    public function getPopularPosts($limit, array $args = []);

    /**
     * @param \Eloquent|int $model
     * @return array
     */
    public function getRelatedCategoryIds($model);
}
