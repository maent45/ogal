<?php

class Track extends DataObject {

	private static $has_one = array (
        'TrackChooser' => 'TrackChooser',
        'track_difficulty' => 'DifficultyLevel',
        'image' => 'Image'
    );

    private static $has_many = array (
        'Reviews' => 'Reviews'
    );

	private static $db = array (
		'track_name' => 'Varchar',
		'warning' => 'Boolean',
		'elevation' => 'Varchar',
        'time' => 'Varchar',
        'dogs_allowed' => 'Boolean',
        'maps_address' => 'Text',
        'track_desc' => 'HTMLText'
	);

	public function getCMSFields() {

        $conf = GridFieldConfig_RelationEditor::create(10);

        $fields = FieldList::create(

            TextField::create('track_name', 'Track name'),
            DropdownField::create(
                'track_difficultyID',
                'Track difficulty',
                DifficultyLevel::get()->map('ID', 'difficulty_level'))
                ->setEmptyString('(Select one)')
                ->setRightTitle('Used to filter tracks based on their difficulty level'),
            UploadField::create('image', 'Track main image')
                ->setFolderName('activity-details-images')
                ->setAllowedExtensions(array('png','gif','jpeg','jpg','svg')),
            CheckBoxField::create('warning', 'Caution for this track?'),
            TextField::create('elevation', 'Elevation'),
            TextField::create('time', 'Time'),
            CheckBoxField::create('dogs_allowed', 'Dogs allowed on this track?'),
            TextField::create('maps_address', 'Address')->setRightTitle('Used to create location marker on map'),
            HtmlEditorField::create('track_desc', 'Track description'),

            // reviews
            HeaderField::create('Track reviews'),
            GridField::create(
                'Reviews',
                'All Reviews',
                $this->Reviews(),
                $conf
            )

        );

        return $fields;
    }

    private static $summary_fields = array (
        'track_name' => 'Track name'
    );

}