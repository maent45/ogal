<?php
/**
 *
 * Represents a review for each Track class.
 *
 */

class Reviews extends DataObject {

    private static $has_one = array (
        'Track' => 'Track'
    );

    private static $db = array (
        'Name' => 'Varchar',
        'Review' => 'Text'
    );

    private static $summary_fields = array (
        'Name' => 'Name',
        'Review' => 'Topic'
    );

}