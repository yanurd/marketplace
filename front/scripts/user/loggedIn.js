function loggedIn() {
  const children = document.getElementById("myList").children.length;
  console.log(localStorage.isLogged)
  if (children == 4 && localStorage.isLogged == "true") {
    const output = `
      <li><a href="index.html">HOME</a></li>
      <li><a href="store.html">STORE</a></li>
      <li><a href="login.html">LOG IN</a></li>
      <li><a href="register.html">REGISTER</a></li>
      <li><a href="register.html">User</a></li>
      <li><a id="logOut" href="register.html">Log Out</a></li>
    `
    document.getElementById("myList").innerHTML = output;
    document.getElementById("logOut").addEventListener("click",logOut)
  }
}
