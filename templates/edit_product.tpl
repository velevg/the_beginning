<dialog data-modal-productEdit class="bg-dark text-white border border-warning rounded">
  <!-- HTML form -->
  <h5><i class="fa-solid fa-cart-plus"></i> Edit Product</h5>
  <form id="editProductForm" method="post" action="controllers/edit_product.php" enctype="multipart/form-data">
    <div class="form-group d-flex">
      <label class="input-group-text">Select product to Edit</label>
      <select id="productSelect" name="id" class="form-select" required>
        {foreach $products as $product}
        <option value="{$product.id}">{$product.name}</option>
        {/foreach}
      </select>
    </div>
    <div class="form-group d-flex">
      <label class="input-group-text" for="category_id">Move to Category</label>
      <select id="categorySelect" class="form-select" name="category_id">
        {foreach $categories as $category}
        <option value="{$category.id}">{$category.name}</option>
        {/foreach}
      </select>
    </div>
    <div class="form-group d-flex">
      <label class="input-group-text" for="name">New Product Name</label>
      <input type="text" name="name" id="name" class="form-control" required>
    </div>
    <div class="form-group d-flex">
      <label class="input-group-text" for="photo">New Product Photo</label>
      <input type="file" name="photo" id="photo" class="form-control" required>
    </div>
    <div class="form-group d-flex">
      <label class="input-group-text" for="price">New Product Price</label>
      <input type="number" name="price" id="price" step="0.01" class="form-control" required>
    </div>
    <div class="d-flex justify-content-between mt-3">
      <button data-close-modal-productEdit class="btn btn-warning">Close</button>
      <button id="editProductButton" type="submit" class="btn btn-success"><i class="far fa-edit"></i> Edit Product</button>
    </div>
  </form>
</dialog>
<script>
  // Edit Product Modal
  const btnOpenProductEditModal = document.querySelectorAll('[data-open-modal-productEdit]');
  const btnCloseProductEditModal = document.querySelector('[data-close-modal-productEdit]');
  const modalProductEdit = document.querySelector('[data-modal-productEdit]');

  btnOpenProductEditModal.forEach(btn => {
    btn.addEventListener('click', () => {
      modalProductEdit.showModal();
    });
  });

  btnCloseProductEditModal.addEventListener('click', () => {
    modalProductEdit.close();
  });
  //AJAX Edit Product
  //$(document).ready(function() {
  //  $('#editProductButton').on('click', function() {
  //    let id = $('#productSelect').val();
  //    let category_id = $('#categorySelect').val();
  //    let name = $('#name').val();
  //    let photo = $('#photo').val();
  //    let price = $('#price').val();
  //
  //    // Send an AJAX POST request
  //    $.ajax({
  //      url: 'controllers/edit_product.php',
  //      type: 'POST',
  //      data: {
  //        id: id,
  //        category_id: category_id,
  //        name: name,
  //        photo: photo,
  //        price: price,
  //      },
  //    });
  //  });
  //}); // action="controllers/edit_product.php" remove 
</script>