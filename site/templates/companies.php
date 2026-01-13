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


?>

<div id="content">
    <ul>
        <?php foreach ($pages->find("template=company") as $company) : ?>
            <li><a href="<?= $company->url ?>"><?= $company->title ?></a></li>
        <?php endforeach; ?>
    </ul>
</div>
