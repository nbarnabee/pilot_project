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

$pilot = $page;

$training_items = $page->references("template=training_date");
$training_array = [];

if ($training_items->count) {
    foreach ($training_items as $item) {
        $training = $item->training_ref;
        $item_data = [];
        $item_data['title'] = $training->title;
        $item_data['date_completed'] = $item->date_completed;

        if ($training->expires) {
            $item_data['expires'] = true;
            $today = new \DateTime('now');
            $expirationDate = new \DateTime($item->date_completed);
            $expirationDate->modify("+{$training->validity_period} month");

            /*
             * TO DO: incorporate the "end of month" flag
             */

            if ($today > $expirationDate) {
                $item_data['days_to_expiration'] = "-";
                $item_data['status'] = "EXPIRED";
            } else {
                $item_data['status'] = "GOOD";  // we'll see if it's renewable later
                $item_data['days_to_expiration'] = "";
            }

            $item_data['expires_on'] = $expirationDate->format('j.n.Y');
            $item_data['days_to_expiration'] .= $today->diff($expirationDate)->days;

            $renewalPeriodStart = clone $expirationDate;

            if ($training->renewal_period) {
                $renewalPeriodStart->modify("-{$training->renewal_period} month");
            }
            $item_data['renew_from'] = $renewalPeriodStart->format('j.n.Y');

            if ($today < $expirationDate && $today >= $renewalPeriodStart) {
                $item_data['status'] = "RENEWABLE";
            }

        } else {
            $item_data['status'] = "GOOD";
            $item_data['expires'] = false;
            $item_data['expires_on'] = null;
            $item_data['days_to_expiration'] = null;
            $item_data['renew_from'] = null;
        }

        $training_array[] = $item_data;
    }
}
?>


<div id="content">
    <section>
        <table>
            <caption>Pilot Data</caption>
            <thead>
            <tr>
                <th scope="id">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Birthdate</th>
                <th scope="col">Email</th>
                <th scope="col">Company</th>
                <th scope="col">Jobs</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row"><?= $pilot->id ?></th>
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
            </tbody>
        </table>
        <?php if (count($training_array)) : ?>
            <table>
                <caption>Training Data</caption>
                <thead>
                <tr>
                    <th scope="col">Training</th>
                    <th scope="col">Erledigt</th>
                    <th scope="col">Ablauf</th>
                    <th scope="col">Erneuern ab</th>
                    <th scope="col">Status</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($training_array as $item) : ?>
                    <tr>
                        <th scope="row"><?= $item['title'] ?></th>
                        <td><?= $item['date_completed'] ?></td>
                        <td>
                            <?= $item['expires'] ? $item['expires_on'] . '<br>(In ' . $item['days_to_expiration'] . ' Tagen)' : '' ?></td>
                        <td>
                            <?= $item['expires'] ? $item['renew_from'] : '' ?>
                        </td>
                        <td><?= $item['status'] ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        <?php endif; ?>
    </section>
</div>
