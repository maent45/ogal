<?php

/*
 *
 * This class represents a post that will be submitted by users.
 * All posts are saved into an instance of the 'Posts' dataobject.
 *
 * */

class Post extends Page {

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Posts',
            $gridfield = new GridField('Posts', 'All posts', Posts::get())
        );

        // set gridfield config
        $config = $gridfield->getConfig();

        $dataColumns = $config->getComponentByType('GridFieldDataColumns');

        $dataColumns->setDisplayFields(array(
            'Email' => 'Email',
            'Name' => 'Name',
            'Topic' => 'Topic',
            'Post' => 'Post'
        ));

        return $fields;
    }

}

class Post_Controller extends Page_Controller {

    // allow access to URL
    private static $allowed_actions = array (
        'Form'
    );

    // create the post form
    public function Form() {

        // create form fields
        $fields = new FieldList (
            new EmailField('Email'),
            new TextField('Name'),
            new TextField('Topic'),
            new TextareaField('Post')
        );

        $actions = new FieldList (
            // add form action button and label
            new FormAction('submit', 'Post')
        );

        // set some validations
        $validator = new RequiredFields('Email', 'Name', 'Post');

        // create the Form object and return
        return new Form($this, 'Form', $fields, $actions, $validator);

    }

    /*
     * Collect post data.
     * function name has to be same as $actions Formaction first argument
     * @param $data -> data passed to the form as an indexed array
     * @param $form -> the form itself
     * */

    public function submit($data, $form) {

        // create instance of the Posts object to save submitted posts into
        $post_submission = new Posts();

        $post_submission->write();
        $form->saveInto($post_submission);
        $post_submission->write();

        // redirect user back once submitted
        return $this->redirectBack();

    }

    // get all Posts
    public function submittedPosts() {
        $posts = Posts::get();

        return $posts;
    }

}