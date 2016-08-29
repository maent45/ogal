<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);

	public function homePage() {
		return DataObject::get('HomePage');
	}

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
		'logout'
	);

	public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

	/* --- MEMBERSHIP MODULE FUNCTIONS --- */
	// get member profile page
	public function memberProfilePage() {
		return DataObject::get_one('MemberProfilePage');
	}

	// check if user is logged in
	public function getLoggedIn() {
		if (!Member::currentUserID()) {
			return false;
		}
		return true;
	}

	// get member active state
	public function getMemberActive() {
		$member = Member::currentUser();
		$status = $member->getField('Status');

		if (!$member) {
			return false;
		}
		if ($status == 'Active') {
			return true;
		}
		return false;
	}

	// get current member
	public function currentUser() {
		return Member::currentUser();
	}

	// user logout
	// Works as long as homepage URL segment is 'home'
	public function logout($redirect = true) {
		$member = Member::currentUser();
		if($member) $member->logOut();
		$this->redirect('home/');
	}
	/* --- END MEMBERSHIP MODULE FUNCTIONS --- */

}
