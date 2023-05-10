<header class="sticky-top bg-dark text-white">
  <nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
        <h1>{$title}</h1>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <div class="d-flex justify-content-end">
            <li class="nav-item">
              <button data-open-modal-category class="btn btn-outline-success nav-link me-1 p-1"><i class="fas fa-plus"></i> Category</button>
            </li>
            <li class="nav-item">
              <button data-open-modal-product class="btn btn-outline-success nav-link me-1 p-1"><i class="fas fa-plus"></i> Product</button>
            </li>
          </div>
          <div class="d-flex justify-content-end">
            <li class="nav-item">
              <button data-open-modal-categoryEdit class="btn btn-outline-warning nav-link me-1 p-1" title="Edit Category"><i class="far fa-edit"></i> Category</button>
            </li>
            <li class="nav-item">
              <button data-open-modal-productEdit class="btn btn-outline-warning nav-link me-1 p-1" title="Edit Product"><i class="far fa-edit"></i> Product</button>
            </li>
          </div>
          <div class="d-flex justify-content-end">
            <li class="nav-item">
              <button data-open-modal-categoryDelete class="btn btn-outline-danger nav-link me-1 p-1" title="Delete Category"><i class="far fa-trash-alt"></i> Category</button>
            </li>
            <li class="nav-item">
              <button data-open-modal-productDelete class="btn btn-outline-danger nav-link me-1 p-1" title="Delete Product"><i class="far fa-trash-alt"></i> Product</button>
            </li>
          </div>
        </ul>
      </div>
    </div>
  </nav>
</header>