<h1><?php echo $product->title?></h1>
<?php echo $this->Html->link('Go back to the product list', ['action' => 'list']); ?>
<body>
        <p><?php echo $this->Html->image("products/".$product->filename,
                array('alt' => $product->title, 'width' => 'auto', 'height' => '400px'));?></p>
        <p><?php echo "Description: ".$product->description."\n"; ?></p>
        <p><?php echo "Average rating: ".$product->rating."\n"; ?></p>
        <p><?php echo "Rate: ";
            echo $this->Html->link('1', ['action' => 'rate', '1',  $product->id])." ";
            echo $this->Html->link('2', ['action' => 'rate', '2', $product->id])." ";
            echo $this->Html->link('3', ['action' => 'rate', '3', $product->id])." ";
            echo $this->Html->link('4', ['action' => 'rate', '4', $product->id])." ";
            echo $this->Html->link('5', ['action' => 'rate', '5', $product->id]);
            ?></p>
</body>
