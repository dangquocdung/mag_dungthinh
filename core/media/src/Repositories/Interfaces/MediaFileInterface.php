<?php

namespace Botble\Media\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface MediaFileInterface extends RepositoryInterface
{
    /**
     * @return mixed
     * @author QuocDung Dang
     */
    public function getSpaceUsed();

    /**
     * @return mixed
     */
    public function getSpaceLeft();

    /**
     * @return mixed
     * @author QuocDung Dang
     */
    public function getQuota();

    /**
     * @return mixed
     * @author QuocDung Dang
     */
    public function getPercentageUsed();

    /**
     * @param $name
     * @param $folder
     * @author QuocDung Dang
     */
    public function createName($name, $folder);

    /**
     * @param $name
     * @param $extension
     * @param $folder
     * @author QuocDung Dang
     */
    public function createSlug($name, $extension, $folder);

    /**
     * @param $folderId
     * @param array $params
     * @param bool $withFolders
     * @param array $folderParams
     * @return mixed
     */
    public function getFilesByFolderId($folderId, array $params = [], $withFolders = true, $folderParams = []);

    /**
     * @param $folder_id
     * @param array $params
     * @return mixed
     */
    /**
     * @param $folderId
     * @param array $params
     * @param bool $withFolders
     * @param array $folderParams
     * @return mixed
     */
    public function getTrashed($folderId, array $params = [], $withFolders = true, $folderParams = []);

    /**
     * @return mixed
     * @author QuocDung Dang
     */
    public function emptyTrash();
}
