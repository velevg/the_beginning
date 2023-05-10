<dialog data-modal-product class="bg-dark text-white border border-success rounded">
  <h5><i class="fa-solid fa-cart-plus"></i> Add Product</h5>
  <form method="POST" action="controllers/add_product.php" enctype="multipart/form-data">
    <div class="form-group d-flex">
      <label class="input-group-text" for="category_id">Category</label>
      <select name="category_id" id="category_id" class="form-select" required>
        {foreach $categories as $category}
        <option value="{$category.id}">{$category.name}</option>
        {/foreach}
      </select>
    </div>

    <div class="form-group d-flex">
      <label class="input-group-text" for="name">Product Name</label>
      <input type="text" name="name" id="name" class="form-control" required>
    </div>
    <div class="form-group d-flex">
      <label class="input-group-text" for="photo">Product Photo</label>
      <input type="file" name="photo" id="photo" class="form-control" required>
    </div>
    <div class="form-group d-flex">
      <label class="input-group-text" for="price">Product Price</label>
      <input type="number" name="price" id="price" step="0.01" class="form-control" required>
    </div><br>
    <div class="d-flex justify-content-between">
      <button data-close-modal-product class="btn btn-warning">Close</button>
      <button type="submit" class="btn btn-success"><i class="fas fa-plus"></i> Add Product</button>
    </div>
  </form>
</dialog>
<script>
  //add Product Modal
  const btnAddProduct = document.querySelector('[data-open-modal-product]');
  const btnCloseProduct = document.querySelector('[data-close-modal-product]');
  const modalProduct = document.querySelector('[data-modal-product]');

  btnAddProduct.addEventListener('click', () => {
    modalProduct.showModal();
  });
  btnCloseProduct.addEventListener('click', () => {
    modalProduct.close();
  });
</script>