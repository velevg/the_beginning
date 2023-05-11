<dialog data-modal-productDelete class="bg-dark text-white border border-danger rounded">
  <!-- HTML form -->
  <h5><i class="fas fa-eraser"></i> Delete Product</h5>
  <form id="deleteProductForm" method="post" action="controllers/delete_product.php" onsubmit="return confirm('Are you sure you want to delete this product?');">
    <div class="form-group d-flex">
      <label class="input-group-text">Select Product to Delete</label>
      <select id="productSelectID" name="id" class="form-select" style="min-width:100px;" required>
        {foreach $products as $product}
        <option value="{$product.id}">{$product.name}</option>
        {/foreach}
      </select>
    </div>
    <div class="d-flex justify-content-between mt-3">
      <a data-close-modal-productDelete class="btn btn-warning">Close</a>
      <button id="deleteProductButton" type="submit" class="btn btn-danger"><i class="far fa-trash-alt"></i> Delete Product</button>
    </div>
  </form>
</dialog>
<script>
  //Delete Product Modal
  const btnAddProductDelete = document.querySelectorAll('[data-open-modal-productDelete]');
  const btnCloseProductDelete = document.querySelector('[data-close-modal-productDelete]');
  const modalProductDelete = document.querySelector('[data-modal-productDelete]');

  btnAddProductDelete.forEach(btn => {
    btn.addEventListener('click', () => {
      modalProductDelete.showModal();
    });
  });
  btnCloseProductDelete.addEventListener('click', () => {
    modalProductDelete.close();
  });
  //AJAX Delete Product
  //$(document).ready(function() {
  //  $('#deleteProductButton').on('click', function() {
  //    let id = $('#productSelect').val();
  //
  //    // Send an AJAX POST request
  //    $.ajax({
  //      url: 'controllers/delete_product.php',
  //      type: 'POST',
  //      data: {
  //        id: id
  //      },
  //    });
  //  });
  //}); // + Remove action="controllers/delete_product.php" :)
</script>
