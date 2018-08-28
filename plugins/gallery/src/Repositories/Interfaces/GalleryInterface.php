<?php

namespace Botble\Gallery\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface GalleryInterface extends RepositoryInterface
{

    /**
     * Get all galleries.
     *
     * @return mixed
     * @author QuocDung Dang
     */
    public function getAll();

    /**
     * @return mixed
     * @author QuocDung Dang
     */
    public function getDataSiteMap();

    /**
     * @param $limit
     * @author QuocDung Dang
     */
    public function getFeaturedGalleries($limit);
}
