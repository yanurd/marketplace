
function logOut(event){
  event.preventDefault();
  localStorage.setItem("isLogged", false)
  localStorage.removeItem("id")
  if (localStorage.isLogged !== true){
    const output = `
      <li><a href="index.html">HOME</a></li>
      <li><a href="store.html">STORE</a></li>
      <li><a href="login.html">LOG IN</a></li>
      <li><a href="register.html">REGISTER</a></li>
    `
    document.getElementById("myList").innerHTML = output;
  }
}