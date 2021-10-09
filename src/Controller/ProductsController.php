<?php

namespace App\Controller;

use Cake\View\ViewBuilder;

class ProductsController extends AppController
{
    public function  initialize(): void
    {
        parent::initialize();
        $this->loadComponent('Paginator');
    }

    public function index(){
        $this->redirect(['action' => 'list']);
    }

    public function list(){
        $articlesTable = $this->getTableLocator()->get('Products');
        $products = $this->Paginator->paginate($articlesTable->find());
        $search = strtolower($this->request->getData('search'));

        if ($this->request->is('post') && $search != '') { //executes when submit button is pressed
            $newProducts = array();
            foreach ($products as $product){
                if(str_contains(strtolower($product->title), $search) || str_contains(strtolower($product->description), $search)){
                    array_push($newProducts, $product);
                }
            }
            $this->set('products', $newProducts);
        } else{
            $this->set('products', $products);
        }

    }

    public function add(){
        $articlesTable = $this->getTableLocator()->get('Products'); //gets the Products  table
        $product = $articlesTable->newEmptyEntity(); //creates and empty entry
        try {
            if ($this->request->is('post')) { //executes when submit button is pressed
                $product = $this->Products->patchEntity($product, $this->request->getData()); //fills the entry with files from the input
                $fileobject = $this->request->getData('submittedfile');
                //$uploadPath = '/products/';
                //$destination = $uploadPath.$fileobject->getClientFilename();
                //$fileobject->moveTo($destination);
                //debug($fileobject);
                if($fileobject != ''){
                    $product->filename = $fileobject;
                }
                if ($this->Products->save($product)){ //saves the updated values
                    $this->Flash->success('The product has been added'); //and returns a success message if successful
                    return $this->redirect(['action' => 'list']); //redirects back to the main page
                }
            }
        } catch (\Exception $ex) {
            $this->Flash->error("Please fill in all the fields!");//send a warning if Failed
        }
        $this->set('product', $product); //send the Products table over to the webpage
    }

    public function remove()
    {
        $products = $this->Paginator->paginate($this->Products->find()); //returns values of the Products table
        $this->set('products', $products); //send the Products table over to the webpage
    }

    public function removed($id_remove)
    {
        $articlesTable = $this->getTableLocator()->get('Products'); //gets the Products  table
        $entity = $articlesTable->get($id_remove); //gets product by ID
        $this->Products->delete($entity); //removes set product
        $this->Flash->success('The product was removed successfully!'); //returns a success message if successful
    }

    public function rate($rated, $id)
    {
        $productsTable = $this->getTableLocator()->get('Products'); //gets the Products  table
        $product = $productsTable->get($id); //gets product by ID
        //we fetch the current rating and calculate a total rating.
        //Then we calculate the new average by adding the rating and increasing the count by one
        $product->rating = ($product->rating * $product->total_rated + $rated) / ($product->total_rated + 1);
        $product->total_rated++;
        $productsTable->save($product); //saves the updated values
        $this->Flash->success('The product has been rated!'); //returns a success message if successful
    }

    public function view($id)
    {
        $articlesTable = $this->getTableLocator()->get('Products'); //gets the Products  table
        $product = $articlesTable->get($id); //gets product by ID
        $this->set('product', $product);
    }

    //public $components = array('ExportXls');

    public function export(){
        $products = $this->Paginator->paginate($this->Products->find());

        $this->autoRender = false;
        $this->layout = false;
        $fileName = "bookreport_".date("d-m-y:h:s").".xls";

        $headerRow = array("ID", "Title", "Type", "Description", "Price", "Rating");
        $data = array();
        foreach ($products as $product) {
            array_push($data, array($product->id, $product->description, $product->title, $product->price, $product->rating));
        }
        //debug($data);
        ini_set('max_execution_time', 1600); //increase max_execution_time to 10 min if data set is very large
        $fileContent = implode("\t ", $headerRow)."\n";
        foreach($data as $result) {
            $fileContent .=  implode("\t ", $result)."\n";
        }
        header('Content-type: application/ms-excel'); /// you can set csv format
        header('Content-Disposition: attachment; filename='.$fileName);
        echo $fileContent;
    }


    public function import(){
        try {
            if ($this->request->is('post')) { //executes when submit button is pressed
                $content = file_get_contents($this->request->getData('link'));//gets the data from the link field
                $data = json_decode($content); //parses and decodes json file
                foreach ($data as $object) { //goes trough decoded json file
                    $articlesTable = $this->getTableLocator()->get('Products'); //gets the Products  table
                    $product = $articlesTable->newEmptyEntity(); //creates and empty entry
                    $product->title = $object->title;
                    $product->type = $object->type;
                    $product->description = $object->description;
                    $product->filename = $object->filename;
                    $product->price = $object->price;
                    $product->rating = $object->rating;
                    if ($articlesTable->save($product)) {
                        $this->Flash->success('The product has been added');
                    }
                }

            }
        } catch (\Exception $ex) {
            $this->Flash->error($ex); //Sends an error message if failed
        }
     }
}
