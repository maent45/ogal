<?php

class ActivityDetail extends Page {

    private static $can_be_root = false;

    private static $db = array (
        'warning' => 'Boolean',
        'elevation' => 'Varchar',
        'difficulty' => 'Varchar',
        'time' => 'Varchar',
        'dogs_allowed' => 'Boolean'
    );

    private static $has_one = array (
        'cover_img' => 'Image',
        'track_difficulty' => 'DifficultyLevel'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', HeaderField::create('Track details'), 'Content');
        // track difficulty
        $fields->addFieldToTab('Root.Main', DropdownField::create('track_difficultyID', 'Track difficulty', DifficultyLevel::get()->map('ID', 'difficulty_level')), 'Content');

        $fields->addFieldToTab('Root.Main', CheckBoxField::create('warning', 'Caution?'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('elevation', 'Elevation'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('difficulty', 'Difficulty'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('time', 'Time'), 'Content');
        $fields->addFieldToTab('Root.Main', CheckBoxField::create('dogs_allowed', 'Time'), 'Content');

        $fields->addFieldToTab('Root.Main', $cover_img = UploadField::create('cover_img', 'Cover image'), 'Content');

        $cover_img->setFolderName('activity-details-images');
        $cover_img->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg','svg'));

        return $fields;
    }

}

class ActivityDetail_Controller extends Page_Controller {

}