<div class="" style="margin: 0; padding: 0; overflow-x: hidden;">
  <div class="row mb-5">
    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-2">
      <div class=" bg-dark text-white p-3 rounded-bottom">
        <p>{$content}</p>
        <label class="input-group-text d-flex justify-content-center" for="filter"><i class="fa-sharp fa-solid fa-filter"></i> &nbsp <span>Filter by categories</span></label>
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <label class="input-group-text" for="filter">Categories</label>
          </div>
          <select class="form-select form-select-sm" id="filter">
            <option value="">All Categories</option>
            {foreach $categories as $category}
            <option value="{$category.id}">{$category.name}</option>
            {/foreach}
          </select>
        </div>
        <div class="text-center">
          {foreach $categories as $category}
          <div class="categoryDescription" data-category="{$category.id}"><i class="fas fa-images"></i> <span>{$category.name}: {$category.description}</span></div>
          {/foreach}
        </div>
      </div>
    </div>
    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-10 mt-md-0 mt-5 mb-5">
      <div id="product-list d-flex justify-content-center">
        <div class="row d-flex justify-content-center">
          {foreach $products as $product}
          <div class="col-sm-6 col-md-4 col-lg-3 mt-4 product-item" data-category="{$product.category_id}">
            <div class="d-flex justify-content-center">
              <div class="card">
                <img src="./uploads/{$product.photo}" class="card-img-top" alt="{$product.name}">
                <div class="card-body">
                  <h5 class="card-title">Name: {$product.name}</h5>
                  <!--<p class="card-text">ID: {$product.id}</p>
                  <p class="card-text">Category ID: {$product.category_id}</p>-->
                  <p class="card-text">Price: {$product.price}</p>
                  <div class="d-flex justify-content-between">
                    <input type="hidden" name="id" value="{$product.id}">
                    <button type="submit" class="btn btn-warning" data-open-modal-productEdit>Edit</button>
                    <form method="POST" action="controllers/delete_product.php" onsubmit="return confirm('Are you sure you want to delete this product?');">
                      <input type="hidden" name="id" value="{$product.id}">
                      <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          {/foreach}
        </div>
      </div>
    </div>
  </div>
</div>



<script>
  //FILTER
  const filterSelect = document.querySelector('#filter');
  const productItems = document.querySelectorAll('.product-item');
  const categoryDescriptions = document.querySelectorAll('.categoryDescription');

  filterSelect.addEventListener('change', function() {
    const selectedCategoryId = this.value;

    //while (selectedCategoryId === '') {
    //  categoryDescriptions.forEach(function(categoryDescription) {
    //    categoryDescription.style.display = 'none';
    //  });
    //
    //  productItems.forEach(function(productItem) {
    //    productItem.style.display = 'block';
    //  });
    //
    //  return;
    //}

    // Filter Category Description by category id from the select
    categoryDescriptions.forEach(function(categoryDescription) {
      const category = categoryDescription.getAttribute('data-category');

      if (category === selectedCategoryId || selectedCategoryId === '') {
        categoryDescription.style.display = 'block';
      } else {
        categoryDescription.style.display = 'none';
      }
    });

    // Filter Products by category id
    productItems.forEach(function(productItem) {
      const category = productItem.getAttribute('data-category');

      if (category === selectedCategoryId || selectedCategoryId === '') {
        productItem.style.display = 'block';
      } else {
        productItem.style.display = 'none';
      }
    });
  });
  //END FILTER
</script>