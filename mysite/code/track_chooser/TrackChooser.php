<?php

class TrackChooser extends Page {

    private static $allowed_children = array (
        'ActivityDetail'
    );

    private static $has_many = array (
        'difficulty_levels' => 'DifficultyLevel'
    );

    private static $db = array (
        'difficulty_levels_heading' => 'Varchar',
        'suggestions_heading' => 'Varchar'
    );

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $conf=GridFieldConfig_RelationEditor::create(10);

        $fields->addFieldToTab('Root.Main', TextField::create('suggestions_heading', 'Suggestions heading'), 'Content');
        $fields->addFieldToTab('Root.TrackDifficultyLevels', TextField::create('difficulty_levels_heading', 'Levels heading'));

        $fields->addFieldToTab('Root.TrackDifficultyLevels', GridField::create(
            'difficulty_levels',
            'Track difficulty levels',
            $this->difficulty_levels(),
            $conf
        ));

        return $fields;

    }

}

class TrackChooser_Controller extends Page_Controller {

}