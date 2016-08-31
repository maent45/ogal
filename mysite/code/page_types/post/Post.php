<?php

class Post extends Page {



}

class Post_Controller extends Page_Controller {

    // allow access to URL
    private static $allowed_actions = array (
        'Form'
    );

    public function Form() {

        // create form fields
        $fields = new FieldList (
            new TextField('Topic'),
            new TextareaField('Post')
        );

        $actions = new FieldList (
            // add form action button and label
            new FormAction('submit', 'Post')
        );

        // create the Form object and return
        return new Form($this, 'Form', $fields, $actions);

    }

}