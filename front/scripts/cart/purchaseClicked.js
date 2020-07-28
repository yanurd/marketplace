function purchaseClicked() {
  if (localStorage.isLogged !== "true") {
    alert("You must log in first in order to be able to purchase");
  } else {
    document.getElementById("checkingout").addEventListener("click",endCheckout)
    checkout()
  }
}
