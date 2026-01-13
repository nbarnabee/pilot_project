<?php namespace ProcessWire;

if (!defined("PROCESSWIRE")) die();

/** @var ProcessWire $wire */

/*
$wire->addHookAfter('InputfieldPage::getSelectablePages', function($event) {
    if($event->object->hasField == 'training_ref') {
        $pilot = $event->object->pilot_ref;
        $trainings = new PageArray();
        foreach ($pilot->jobs_ref as $job) {
            $trainings->import($job->references("template=training"));
        }

        $event->return = $trainings;
    }
});
*/