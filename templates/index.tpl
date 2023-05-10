{include file="head.tpl" title="{$title}"}
<!-- Header -->
{include file="header.tpl"}

<!-- Main -->
{include file="main.tpl"}

<!-- Modals -->
{include file="add_category.tpl"}
{include file="add_product.tpl"}
{include file="edit_product.tpl"}
{include file="edit_category.tpl"}
{include file="delete_category.tpl"}
{include file="delete_product.tpl"}
{include file="footer.tpl"}


<script>
  let inputFields = document.querySelectorAll(".form-control");

  // Iterate over each input field :p
  inputFields.forEach(function(inputField) {
    inputField.addEventListener("input", function(event) {
      let inputValue = event.target.value;

      // Remove symbols (exclude)
      let sanitizedValue = inputValue.replace(/[<>&"!?@#$%^*()_+\''`/,|{}:;~]/g, '');

      // Update the input field value with the 'sanitized' :D value
      event.target.value = sanitizedValue;
    });
  });
</script>