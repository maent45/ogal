<?php

class TrackChooser extends Page {

    private static $allowed_children = array (
        'ActivityDetail'
    );

    private static $has_many = array (
        'difficulty_levels' => 'DifficultyLevel'
    );

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $conf=GridFieldConfig_RelationEditor::create(10);

        $fields->addFieldToTab('Root.DifficultyLevels', GridField::create(
            'difficulty_levels',
            'Difficulty levels',
            $this->difficulty_levels(),
            $conf
        ));

        return $fields;

    }

}

class TrackChooser_Controller extends Page_Controller {

}