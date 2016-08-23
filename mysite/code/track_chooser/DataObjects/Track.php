<?php

class Track extends DataObject {

	private static $has_one = array (
        'TrackChooser' => 'TrackChooser'
    );

	private static $db = array (
		'track_name' => 'Varchar'
	);

	public function getCMSFields() {
        $fields = FieldList::create(
            TextField::create('track_name', 'Track name')
        );

        return $fields;
    }

    private static $summary_fields = array (
        'track_name' => 'Track name'
    );

}