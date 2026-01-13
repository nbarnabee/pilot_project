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
    <section>
        <table>
            <caption>Pilots table</caption>
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Birthdate</th>
                <th scope="col">Email</th>
                <th scope="col">Company</th>
                <th scope="col">Jobs</th>
            </tr>
            </thead>
            <tbody>
            <?php foreach ($pages->find("template=pilot") as $pilot) : ?>
                <tr>
                    <th scope="row"><a href="<?= $pilot->url ?>"><?= $pilot->id ?></a></th>
                    <td><?= $pilot->vorname . ' ' . $pilot->nachname ?></td>
                    <td><?= $pilot->birthdate ?></td>
                    <td><?= $pilot->pilot_email ?></td>
                    <td><?= $pilot->company_ref->title ?></td>
                    <td>
                        <ul>
                            <?php foreach ($pilot->jobs_ref as $job) : ?>
                                <li><?= $job->title ?></li>
                            <?php endforeach; ?>
                        </ul>
                    </td>
                </tr>
            <?php endforeach; ?>
            </tbody>
        </table>
    </section>
</div>
