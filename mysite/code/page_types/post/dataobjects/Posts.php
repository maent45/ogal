<?php

/**
 *
 * This class represents all Post objects.
 * An instance of this class is called from the 'Post' class
 * to write all posts.
 *
 */

class Posts extends DataObject {

    private static $db = array (
        'Email' => 'Varchar',
        'Name' => 'Varchar',
        'Topic' => 'Varchar',
        'Post' => 'Text',
        'Approved' => 'Boolean'
    );

    private static $summary_fields = array (
        'Email' => 'Email',
        'Name' => 'Name',
        'Topic' => 'Topic',
        'Approved' => 'Post approved?'
    );

}