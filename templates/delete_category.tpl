<dialog data-modal-categoryDelete class="bg-dark text-white border border-danger rounded">
  <!-- HTML form -->
  <h5><i class="fas fa-eraser"></i> Delete Category</h5>
  <form id="deleteCategoryForm" method="post" action="controllers/delete_category.php" onsubmit="return confirm('Are you sure you want to delete this product?');">
    <div class="form-group d-flex">
      <label class="input-group-text">Select Category to Delete</label>
      <select id="categorySelect" name="id" class="form-select" style="min-width:100px;" required>
        {foreach $categories as $category}
        <option value="{$category.id}">{$category.name}</option>
        {/foreach}
      </select>
    </div>
    <div class="d-flex justify-content-between mt-3">
      <a data-close-modal-categoryDelete class="btn btn-warning">Close</a>
      <button id="deleteCategoryButton" type="submit" class="btn btn-danger"><i class="far fa-trash-alt"></i> Delete Category</button>
    </div>
  </form>
</dialog>
<script>
  //Delete Category Modal
  const btnAddCategoryDelete = document.querySelector('[data-open-modal-categoryDelete]');
  const btnCloseCategoryDelete = document.querySelector('[data-close-modal-categoryDelete]');
  const modalCategoryDelete = document.querySelector('[data-modal-categoryDelete]');

  btnAddCategoryDelete.addEventListener('click', () => {
    modalCategoryDelete.showModal();
  });
  btnCloseCategoryDelete.addEventListener('click', () => {
    modalCategoryDelete.close();
  });
  //AJAX Delete Category
  //$(document).ready(function() {
  //  $('#deleteCategoryButton').on('click', function() {
  //    let id = $('#categorySelect').val();
  //
  //    // Send an AJAX POST request
  //    $.ajax({
  //      url: 'controllers/delete_category.php',
  //      type: 'POST',
  //      data: {
  //        id: id
  //      }, // Pass the category ID as data
  //    });
  //  });
  //
  //});  // + Remove action="controllers/delete_category.php" :):D
</script>
