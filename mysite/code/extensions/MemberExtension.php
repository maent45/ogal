<?php

/*
 * This class will extends the Member class to add
 * more input fields for registering users via the membership module
 * */

class MemberExtension extends DataExtension {

    private static $has_one = array (
        'profile_pic' => 'Image'
    );

    // modify default cms fields to include the following upload fields
    public function updateCMSFields(FieldList $fields) {
        $fields->push($imageUpload = new UploadField('profile_pic', 'ProfilePic'));

        $imageUpload->setFolderName('Profile');

        return $fields;
    }

}