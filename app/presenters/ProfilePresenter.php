<?php

namespace App\Presenters;

use Nette;
use Nette\Application\UI\Form;
use Nette\Utils\FileSystem;
use App\Forms;
use Nette\Utils\Image;


class ProfilePresenter extends BasePresenter
{
  public function renderDefault()
  {
    $this->template->topics = $this->database->table('topics')->order('topic_date DESC');
    $this->template->profileimages = $this->database->table('images')->where('image_id', $this->getUser()->id)->fetch();
  }
  public function renderPicture()
  {
    $this->template->profileimages = $this->database->table('images')->where('image_id', $this->getUser()->id)->fetch();
  }
  protected function createComponentNajakejForm()
{
  $form = new \Nette\Application\UI\Form;
  $form->addUpload("file"," ");
  $form->addSubmit("save", "Uložit");
  $form->onSuccess[] = [$this, "saveNecoClicked"];
  return $form;
}
public function saveNecoClicked($form, $values)
{

  $values = $form->values;
  $file = $values['file'];
  // kontrola jestli se jedná o obrázek a jestli se nahrál dobře
  if ($file->isImage() and $file->isOk()) {
    // oddělení přípony pro účel změnit název souboru na co chceš se zachováním přípony
    $file_ext=strtolower(mb_substr($file->getSanitizedName(), strrpos($file->getSanitizedName(), ".")));
    // vygenerování náhodného řetězce znaků, můžeš použít i \Nette\Strings::random()
    $file_name = uniqid(rand(0,20), TRUE).$file_ext;
    // přesunutí souboru z temp složky někam, kam nahráváš soubory
    $path = "img/" . $file_name;
    $file->move($path);

    $this->database->table('images')->insert([
        'image_id' => $this->getUser()->id,
        'image_name' => $this->getUser()->id,
    ]);
  }
 }
}
