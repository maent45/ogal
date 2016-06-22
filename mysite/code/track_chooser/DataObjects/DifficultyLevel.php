<?php

class DifficultyLevel extends DataObject {

    private static $has_one = array (
        'TrackChooser' => 'TrackChooser'
    );

    private static $db = array (
        'difficulty_level' => 'Varchar'
    );

    public function getCMSFields() {
        $fields = FieldList::create(
            TextField::create('difficulty_level', 'Difficulty level')
        );

        return $fields;
    }

    private static $summary_fields = array (
        'difficulty_level' => 'Difficulty level'
    );

}