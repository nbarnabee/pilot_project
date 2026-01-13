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
            <caption>Trainings table</caption>
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Title</th>
                <th scope="col">Related Jobs</th>
                <th scope="col">Expires?</th>
                <th scope="col">Expiration period*</th>
                <th scope="col">Expires end-of-month</th>
                <th scope="col">Renewal period*</th>
            </tr>
            </thead>
            <tbody>
            <?php foreach ($pages->find("template=training") as $training) : ?>
                <tr>
                    <th scope="row"><?= $training->id ?></th>
                    <td><?= $training->title ?></td>
                    <td>
                        <ul>
                            <?php foreach ($training->jobs_ref as $job) : ?>
                                <li><?= $job->title ?></li>
                            <?php endforeach; ?>
                        </ul>
                    </td>
                    <td><?= $training->expires ? "Yes" : "No" ?></td>
                    <td><?= $training->validity_period ?></td>
                    <td><?= $training->expires_month_end ? "Yes" : "No" ?></td>
                    <td><?= $training->renewal_period ?></td>
                </tr>
            <?php endforeach; ?>
            </tbody>
        </table>
        <aside>* In months</aside>
    </section>
</div>
