<?php

namespace Botble\Contact\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface ContactInterface extends RepositoryInterface
{
    /**
     * @param array $select
     * @return mixed
     * @author QuocDung Dang
     */
    public function getUnread($select = ['*']);

    /**
     * @return int
     * @author QuocDung Dang
     */
    public function countUnread();
}
