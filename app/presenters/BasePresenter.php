<?php

namespace App\Presenters;

use Nette;
use Tracy\Debugger;

abstract class BasePresenter extends Nette\Application\UI\Presenter
{
    public function beforeRender()
	{
		$user = $this->getUser();
		if (!$user->isLoggedIn())
		{
			$this->redirect('Sign:in');
		}
	}
    public $database;
    public $session;
    public $mySection;

    function __construct(Nette\Database\Context $database, Nette\Http\Session $session)
    {
      \Tracy\Debugger::enable(\Tracy\Debugger::DEVELOPMENT);
        $this->database = $database;
        $this->session = $session;
        $this->mySection = $session->getSection('franta');
    }
}
