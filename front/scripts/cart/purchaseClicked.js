function purchaseClicked() {
  if (!localStorage.getItem("isLogged")){
    alert("You must log in first in order to be able to purchase")
  }else {
    var id = localStorage.getItem("id")
    const API = "http://localhost:5000/cart";
    var cartItemContainer = document.getElementsByClassName("cart-items")[0];
    var cartRows = cartItemContainer.getElementsByClassName("cart-row");
    for (var i = 0; i < cartRows.length; i++) {
      var cartRow = cartRows[i];
      var priceElement = cartRow.getElementsByClassName("cart-price")[0];
      var item = cartRow.getElementsByClassName("cart-item-title")[0].innerText;
      var quantityElement = cartRow.getElementsByClassName(
        "cart-quantity-input"
      )[0];
      var price = parseFloat(priceElement.innerText.replace("$", ""));
      var quantity = parseInt(quantityElement.value);
      axios
        .post(API, {
          idUser: id,
          item: item,
          cantidad: quantity,
          precio: price,
        })
        .then(function (response) {
          console.log(response);
        })
        .catch(function (error) {
          alert("Something went wrong");
        });
    }
    var cartItems = document.getElementsByClassName("cart-items")[0];
    while (cartItems.hasChildNodes()) {
      cartItems.removeChild(cartItems.firstChild);
    }
    updateCartTotal();
    alert("Thank you for your purchase");
  }
  
}
