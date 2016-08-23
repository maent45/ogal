<?php

class Track extends DataObject {

	private static $has_one = array (
        'TrackChooser' => 'TrackChooser',
        'image' => 'Image'
    );

	private static $db = array (
		'track_name' => 'Varchar',
		'warning' => 'Boolean',
		'elevation' => 'Varchar',
        'difficulty' => 'Varchar',
        'time' => 'Varchar',
        'dogs_allowed' => 'Boolean',
        'maps_address' => 'Text'
	);

	public function getCMSFields() {
        $fields = FieldList::create(

            TextField::create('track_name', 'Track name'),
            UploadField::create('image', 'Track main image')
                ->setFolderName('activity-details-images')
                ->setAllowedExtensions(array('png','gif','jpeg','jpg','svg')),
            CheckBoxField::create('warning', 'Caution for this track?'),
            TextField::create('elevation', 'Elevation'),
            TextField::create('time', 'Time'),
            CheckBoxField::create('dogs_allowed', 'Dogs allowed on this track?'),
            TextField::create('maps_address', 'Address (Used to create location marker on map)')

        );

        return $fields;
    }

    private static $summary_fields = array (
        'track_name' => 'Track name'
    );

}