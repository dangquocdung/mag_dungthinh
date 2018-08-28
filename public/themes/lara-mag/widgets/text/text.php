<?php

use Botble\Widget\AbstractWidget;

class TextWidget extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * @var string
     */
    protected $frontendTemplate = 'frontend';

    /**
     * @var string
     */
    protected $backendTemplate = 'backend';

    /**
     * @var string
     */
    protected $widgetDirectory = 'text';

    /**
     * Widget constructor.
     * @author QuocDung Dang
     */
    public function __construct()
    {
        parent::__construct([
            'name' => 'Text - DungThinh Theme',
            'description' => __('Arbitrary text or HTML.'),
            'content' => null,
        ]);
    }
}