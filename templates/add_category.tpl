  <!-- Modal Add Category -->
  <dialog data-modal-category class="bg-dark text-white border border-success rounded">
    <!-- HTML form -->
    <h5><i class="fas fa-images"></i> Add Category</h5>
    <form method="POST" action="controllers/add_category.php">
      <div class="form-group d-flex">
        <label class="input-group-text" for="name">Category Name</label>
        <input type="text" name="name" id="name" class="form-control" required>
      </div>
      <div class="form-group d-flex">
        <label class="input-group-text" for="description">Category Description</label>
        <textarea name="description" id="description" class="form-control" required></textarea>
      </div><br>
      <div class="d-flex justify-content-between">
        <button data-close-modal-category class="btn btn-warning">Close</button>
        <button type="submit" class="btn btn-success"><i class="fas fa-plus"></i> Add Category</button>
      </div>
    </form>
  </dialog>
  <script>
    //add Category Modal
    const btnAddCategory = document.querySelector('[data-open-modal-category]');
    const btnCloseCategory = document.querySelector('[data-close-modal-category]');
    const modalCategory = document.querySelector('[data-modal-category]');

    btnAddCategory.addEventListener('click', () => {
      modalCategory.showModal();
    });
    btnCloseCategory.addEventListener('click', () => {
      modalCategory.close();
    });
  </script>