<h1>Product list</h1>
<?php
    echo $this->Form->create();
    echo $this->Form->control('search');
    echo $this->Form->submit('search');
    echo $this->Form->end();
?>
<?= $this->Html->link('Add product', ['action' => 'add'])."/"; ?>
<?= $this->Html->link('Remove product', ['action' => 'remove'])."/"; ?>
<?= $this->Html->link('Export to XML', ['action' => 'export'])."/"; ?>
<?= $this->Html->link('Import from JSON', ['action' => 'import']); ?>
<table>
    <tr>
        <th></th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Rating</th>
        <th>Date created</th>
    </tr>

    <!-- ITERATE PRODUCTS QUERY OBJECT -->
    <?php $i = 1;
    foreach ($products as $product) {  ?>
        <tr>
            <td>
                <?= $i.")" ?>
            </td>
            <td>
                <?= $this->Html->link($product->title, ['action' => 'view',  $product->id]) ?>
            </td>
            <td>
                <?= $product->price ?>
            </td>
            <td>
                <?= $product->description ?>
            </td>
            <td>
                <?= $product->rating ?>
            </td>
            <td>
                <?= $product->created->format(DATE_RFC850) ?>
            </td>
        </tr>
    <?php $i++;
    } ?>
</table>
