<?php

namespace App\Presenters;


use Nette;
use Nette\Application\UI\Form;
use App\Forms;


class HomepagePresenter extends BasePresenter
{
  public function renderDefault()
  {
   $this->template->topics = $this->database->table('topics')->order('topic_date DESC');
   $this->template->odkoho = $this->database->table('topics');
   $this->template->obsah = $this->database->table('topics')->where('topic_subject', 'obsah');
   $this->template->profileimages = $this->database->table('images')->where('image_id', $this->getUser()->id)->fetch();
  }
  public function createComponentCommentForm()
  {
    $form = new Form;
    $form->addText('topic_subject', 'Co máte na srdci?')
    ->setRequired();
    $form->addSubmit('send', 'Post');
    $form->onSuccess[] = array($this, 'CommentFormSucceeded');
    return $form;
  }
  public function CommentFormSucceeded($form, $values)
  {
    $this->database->table('topics')->insert([
        'topic_subject' => $values->topic_subject,
        'topic_by' => $this->getUser()->id
    ]);
    $this->redirect('this');
  }
}
