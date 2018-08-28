<?php

namespace Botble\Widget;

class WidgetId
{
    /**
     * Static incrementing widget id.
     *
     * @var int
     */
    protected static $id = 0;

    /**
     * Getter for widget id.
     *
     * @return int
     * @author QuocDung Dang
     */
    public static function get()
    {
        return self::$id;
    }

    /**
     * Setter for widget id.
     *
     * @param int $id
     * @author QuocDung Dang
     */
    public static function set($id)
    {
        self::$id = $id;
    }

    /**
     * Increment widget id by one.
     * @author QuocDung Dang
     */
    public static function increment()
    {
        self::$id++;
    }

    /**
     * Resets widget id to zero.
     * @author QuocDung Dang
     */
    public static function reset()
    {
        self::$id = 0;
    }
}
