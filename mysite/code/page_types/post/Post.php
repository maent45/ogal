<?php

class Post extends Page {



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
        $email = new Email();

        // set email address to send to
        $email->setTo('johndoe@fakemail.com');
        $email->setFrom($data['Email']);
        $email->setSubject("Post from {$data['Name']}");

        $messageBody = "
            <p><strong>Name:</strong> {$data['Name']}</p>
            <p><strong>Message:</strong> {$data['Post']}</p>
        ";
        $email->setBody($messageBody);
        // send email
        $email->send();

        return array (
            // return feedback to user once submitted
            'Content' => '<p>Shot for the post bro!</p>',
            // return Form false to not render it
            'Form' => ''
        );

    }

}