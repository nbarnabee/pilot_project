<?php namespace ProcessWire;

use Exception;

if (!defined("PROCESSWIRE")) die();

/** @var ProcessWire $wire */

/**
 * Returns sanitized SVG code from a file
 */
$wire->files->addHookMethod('inlineSvg', function (HookEvent $event) {
    /** @var WireFileTools $files */
    $files = $event->object;

    /** @var string $filePath */
    $filePath = $event->arguments(0);

    /** @var FileValidatorSvgSanitizer $sanitizerModule */
    $sanitizerModule = $files->wire()->modules->get('FileValidatorSvgSanitizer');

    try {
        $svgSanitizer = $sanitizerModule->getSvgSanitizer();
        $svgSanitizer->minify(true);
        $svgSanitizer->removeXMLTag(true);

        $event->return = $svgSanitizer->sanitize($files->fileGetContents($filePath));
    } catch (Exception) {
        $event->return = '';
    }
});
