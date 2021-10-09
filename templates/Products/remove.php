<table>
    <?php echo $this->Html->link('Go back to the product list', ['action' => 'list']); ?>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Rating</th>
    </tr>

    <!-- ITERATE PRODUCTS QUERY OBJECT -->
    <?php foreach ($products as $product) {  ?>
    <tr>
        <td>
            <?= $product->id ?>
        </td>
        <td>
            <?= $product->title ?>
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
            <?= $this->Html->link("REMOVE", ['action' => 'removed',  $product->id]); ?>
        </td>
    </tr>
<?php } ?>
