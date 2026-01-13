<?php namespace ProcessWire;

use Exception;

/**
 * @var Page $page
 * @var Pages $pages
 * @var Config $config
 * @var Modules $modules
 * @var ProcessWire $wire
 * @var WireInput $input
 * @var WireFileTools $files
 * @var Sanitizer $sanitizer
 */

/** @var InputfieldForm $form */
$form = $modules->get('InputfieldForm');
$form->attr('action', '#contact-form');

/** @var InputfieldWrapper $formRow */
$formRow = $modules->get('InputfieldWrapper');

/** @var InputfieldText $field */
$field = $modules->get('InputfieldText');
$field->wrapClass('full half-tablet-portrait');
$field->attr('name', 'lastname');
$field->set('label', __('Last name'));
$field->required = true;
$formRow->add($field);

/** @var InputfieldText $field */
$field = $modules->get('InputfieldText');
$field->wrapClass('full half-tablet-portrait');
$field->attr('name', 'firstname');
$field->set('label', __('First name'));
$field->required = true;
$formRow->add($field);

/** @var InputfieldText $field */
$field = $modules->get('InputfieldText');
$field->wrapClass('full half-tablet-portrait');
$field->attr('name', 'phone');
$field->set('label', __('Phone'));
$field->required = true;
$formRow->add($field);

/** @var InputfieldEmail $field */
$field = $modules->get('InputfieldEmail');
$field->wrapClass('full half-tablet-portrait');
$field->attr('name', 'email_address');
$field->set('label', __('E-Mail Address'));
$field->required = true;
$formRow->add($field);

/** @var InputfieldTextarea $field */
$field = $modules->get('InputfieldTextarea');
$field->wrapClass('full');
$field->attr('name', 'message');
$field->attr('rows', '6');
$field->set('label', __('Message'));
$formRow->add($field);

$form->add($formRow);

/** @var InputfieldSubmit $field */
$field = $modules->get('InputfieldSubmit');
$field->attr('name', 'submit_form');
$field->addClass('button');
$field->val(__('Absenden')); // form submit label
$form->add($field);

if ($config->reCaptchaEnabled) {
    /** @var InputfieldHidden $field */
    $field = $modules->get('InputfieldHidden');
    $field->attr('name', 'recaptcha');
    $field->required = true;
    $form->add($field);
}

$message = '';
$isError = false;
$renderForm = true;

if ($form->isSubmitted()) {
    try {
        $spamScore = 1;
        if ($config->reCaptchaEnabled) {
            $captchaToken = $sanitizer->entities($input->post('recaptcha'));
            $http = new WireHttp();
            $spamResponse = $http->post('https://www.google.com/recaptcha/api/siteverify', [
                'secret' => $config->reCaptchaSecretKey,
                'response' => $captchaToken,
            ]);

            if ($spamResponse === false) {
                throw new Exception(__('An error occurred, please try again.')); // form technical error
            }

            $spamResult = json_decode($spamResponse);
            if (!$spamResult->success) {
                throw new Exception(__('An error occurred, please try again.')); // form technical error
            }

            $spamScore = $spamResult->score;
            if ($spamScore < $config->reCaptchaSpamScoreThreshhold) {
                throw new Exception(__('An error occurred, please try again.')); // form technical error
            }
        }

        if (!$form->process()) {
            throw new Exception(__('There were errors, please fix.')); // form validation error
        }

        /** @var WireMail $mail */
        $mail = $this->mail->new();

        // from
        $mail->from($config->contactEmailFrom, $config->contactEmailFromName);
        $mail->replyTo($form->getValueByName('email_address'), $form->getValueByName('firstname') . ' ' . $form->getValueByName('lastname'));

        // subject
        $mail->subject("Contact Form Submission");

        // to
        $mail->to('technik@fruitcake.ch');

        // data
        $mailBody = $files->fileGetContents($config->paths->templates . 'partials/forms/mail-contact-form.html');
        $replacements = [];
        foreach ($form->getAll() as $field) {
            $replacements[$field->attr('name')] = $field->val();
        }

        // info
        $textTools = $sanitizer->getTextTools();
        if ($config->reCaptchaEnabled) {
            $recaptchaInfoText = __('This message was checked with Google reCaptcha. It got a score of {score}. Generally, messages scoring higher than {threshold} are accepted.');
            $replacements['info'] = $textTools->populatePlaceholders($recaptchaInfoText, [
                'score' => $spamScore,
                'threshold' => $config->reCaptchaSpamScoreThreshhold,
            ]);
        } else {
            $replacements['info'] = __('This message was NOT checked with Google reCaptcha.');
        }

        $mail->bodyHTML($textTools->populatePlaceholders($mailBody, $replacements));

        if (!($mail->send())) {
            throw new Exception(__('An error occurred, please try again.')); // form technical error
        }

        $message = __('Thank you, your message has been sent!'); // form send success
        $renderForm = false;
    } catch (Exception $e) {
        $message = $e->getMessage();
        $isError = true;
    }
}

?>

<?php if (strlen($message)): ?>
    <div class="form-message <?= strlen($isError) ? 'error' : '' ?>"><?= $message ?></div>
<?php endif; ?>
<?php if ($renderForm) {
    echo $form->render();
} ?>
