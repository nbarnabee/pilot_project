<?php

namespace ProcessWire;

/**
 * @var Page $page
 *
 * @var Pages $pages
 * @var User $user
 * @var Languages $languages
 * @var WireFileTools $files
 * @var Config $config
 * @var Modules $modules
 */

$pilots = $page->references("template=pilot");


?>

<div id="content">
    <ul>
        <?php foreach ($pilots as $pilot) : ?>
            <li><a href="<?= $pilot->url ?>"><?= $pilot->title ?></a></li>
        <?php endforeach; ?>
    </ul>
</div>
