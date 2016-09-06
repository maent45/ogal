<?php
/**
 *
 * Represents a review for each Track class.
 *
 */

class Review extends DataObject {

    private static $has_one = array (
        'Track' => 'Track'
    );

    private static $db = array (
        'Name' => 'Varchar',
        'Review' => 'Text'
    );

}