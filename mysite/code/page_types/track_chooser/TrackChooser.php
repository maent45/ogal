<?php

class TrackChooser extends Page {

    private static $has_many = array (
        'tracks' => 'Track',
        'difficulty_levels' => 'DifficultyLevel'
    );

    private static $db = array (
        'maps_api_key' => 'Text',
        'difficulty_levels_heading' => 'Varchar',
        'suggestions_heading' => 'Varchar'
    );

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $conf = GridFieldConfig_RelationEditor::create(10);

        $fields->addFieldToTab('Root.GoogleMapsAPI', TextField::create('maps_api_key', 'Google maps api key'));
        $fields->addFieldToTab('Root.Main', TextField::create('suggestions_heading', 'Suggestions heading'),'Content');
        $fields->addFieldToTab('Root.TrackDifficultyLevels', TextField::create('difficulty_levels_heading', 'Levels heading'));

        // difficulties dataobject
        $fields->addFieldToTab('Root.TrackDifficultyLevels', GridField::create(
            'difficulty_levels',
            'Track difficulty levels',
            $this->difficulty_levels(),
            $conf
        ));

        // tracks dataobjects
        $fields->addFieldToTab('Root.Tracks', GridField::create(
            'tracks',
            'Tracks',
            $this->tracks(),
            $conf
        ));        

        return $fields;

    }

}

class TrackChooser_Controller extends Page_Controller {

    // set methods accessible on page URL
    private static $allowed_actions = array (
        'Form'
    );

    public function Form() {

        // create form fields
        $fields = new FieldList (
            new TextField('Name'),
            new TextareaField('Review'),
            new HiddenField('TrackID','','1')
        );

        $actions = new FieldList (
            // set form action name and button label
            new FormAction('submit', 'Comment')
        );

        // set required fields
        $validator = new RequiredFields('Name', 'Review');

        // create the form object and return it
        /*
         *
         * @params:
         * $this -> this controller
         * Form -> Form function name
         * $fields -> form fields
         * $actions -> form submit action
         * $validator -> required fields
         *
         * */
        return new Form($this, 'Form', $fields, $actions, $validator);

    }

    /*
     *
     * @params:
     * $data -> data returned from form
     * $form -> form
     *
     * */
    public function submit($data, $form) {

        // set instance of Reviews object
        $review_submission = new Reviews();

        $review_submission->write();
        $form->saveInto($review_submission);
        $review_submission->write();

        // redirect user when form submitted
        return $this->redirectBack();

    }

    // get all reviews
    public function submittedTrackReviews() {
        $reviews = Reviews::get();

        return $reviews;
    }

}