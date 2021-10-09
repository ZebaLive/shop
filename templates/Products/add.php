<h1>Add a new product</h1>
<?php
echo $this->Html->link('Go back to the product list', ['action' => 'list']);
echo $this->Form->create($product);
echo $this->Form->control('title');
echo $this->Form->control('type');
echo $this->Form->control('description');
echo $this->Form->control('price');
echo $this->Form->control('rating');
echo $this->Form->create(NULL, ['type' => 'file']);
echo $this->Form->file('submittedfile');
echo $this->Form->button('save');
echo $this->Form->end();
?>


