<?php

/**
 *
 * This call represents all Post objects.
 * An instance of this class is called from the 'Post' class
 * to write all posts.
 *
 */

class Posts extends DataObject {

    private static $db = array (
        'Email' => 'Varchar',
        'Name' => 'Varchar',
        'Topic' => 'Varchar',
        'Post' => 'Text'
    );

}