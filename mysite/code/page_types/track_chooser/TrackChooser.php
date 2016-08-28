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

        $conf=GridFieldConfig_RelationEditor::create(10);

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

}