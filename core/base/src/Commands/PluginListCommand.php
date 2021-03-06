<?php

namespace Botble\Base\Commands;

use Illuminate\Console\Command;

class PluginListCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'cms:plugin:list';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Show all plugins information';

    /**
     * Execute the console command.
     * @throws \Illuminate\Contracts\Filesystem\FileNotFoundException
     */
    public function handle()
    {
        $header = [
            'Name',
            'Alias',
            'Version',
            'Provider',
            'Status',
            'Author',
        ];
        $result = [];

        $plugins = scan_folder(config('core.base.general.plugin_path'));
        if (!empty($plugins)) {
            $installed = get_active_plugins();
            foreach ($plugins as $plugin) {
                $content = get_file_data(config('core.base.general.plugin_path') . DIRECTORY_SEPARATOR . $plugin . '/plugin.json');
                if (!empty($content)) {
                    $result[] = [
                        array_get($content, 'name'),
                        $plugin,
                        array_get($content, 'version'),
                        array_get($content, 'provider'),
                        in_array($plugin, $installed) ? '✓ activated' : '✘ deactivated',
                        array_get($content, 'author'),
                    ];
                }
            }
        }

        $this->table($header, $result);
    }
}
