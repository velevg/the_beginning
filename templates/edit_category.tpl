<dialog data-modal-categoryEdit class="bg-dark text-white border border-warning rounded">
  <!-- HTML form -->
  <h5><i class="fas fa-images"></i> Edit Category</h5>
  <form id="editCategoryForm" method="POST" action="controllers/edit_category.php">
    <div class="form-group d-flex">
      <label class="input-group-text" for="category_id">Select Category</label>
      <select id="categorySelect" name="id" class="form-select" required>
        {foreach $categories as $category}
        <option value="{$category.id}">{$category.name}</option>
        {/foreach}
      </select>
    </div>
    <div class="form-group d-flex">
      <label class="input-group-text" for="name">New Name</label>
      <input id="newNameInput" type="text" name="name" class="form-control" required>
    </div>
    <div class="form-group d-flex">
      <label class="input-group-text" for="description">New Description</label>
      <input id="newDescriptionInput" type="text" name="description" class="form-control"><br><br>
    </div>
    <div class="d-flex justify-content-between mt-3">
      <button data-close-modal-categoryEdit class="btn btn-warning">Close</button>
      <button id="updateCategoryButton" type="submit" class="btn btn-success"><i class="far fa-edit"></i> Update Category</button>
    </div>
  </form>
</dialog>
<script>
  //Edit Category Modal
  const btnAddCategoryEdit = document.querySelector('[data-open-modal-categoryEdit]');
  const btnCloseCategoryEdit = document.querySelector('[data-close-modal-categoryEdit]');
  const modalCategoryEdit = document.querySelector('[data-modal-categoryEdit]');

  btnAddCategoryEdit.addEventListener('click', () => {
    modalCategoryEdit.showModal();
  });
  btnCloseCategoryEdit.addEventListener('click', () => {
    modalCategoryEdit.close();
  });
  //AJAX Edit Category
  //$(document).ready(function() {
  //  $('#updateCategoryButton').on('click', function() {
  //    let id = $('#categorySelect').val();
  //    let newName = $('#newNameInput').val();
  //    let newDescription = $('#newDescriptionInput').val();
  //
  //    // Send an AJAX POST request
  //    $.ajax({
  //      url: 'controllers/edit_category.php',
  //      type: 'POST',
  //      data: {
  //        id: id,
  //        name: newName,
  //        description: newDescription
  //      },
  //    });
  //  });
  //}); //+ Remove action="controllers/edit_category.php" :)
</script>