<?php echo $this->Html->link('Go back to the product list', ['action' => 'list']);

echo $this->Form->create();
echo $this->Form->control('link');
echo $this->Form->submit('parse');

