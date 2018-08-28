<?php

namespace Botble\ACL\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface UserInterface extends RepositoryInterface
{

    /**
     * @return mixed
     * @author QuocDung Dang
     */
    public function getDataSiteMap();

    /**
     * Get unique username from email
     *
     * @param $email
     * @return string
     * @author QuocDung Dang
     */
    public function getUniqueUsernameFromEmail($email);
}
