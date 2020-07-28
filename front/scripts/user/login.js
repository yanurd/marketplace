document.getElementById("submit").addEventListener("click", login);
async function login(event) {
  event.preventDefault();
  const API = "http://localhost:5000/login";
  const email = document.getElementById("email").value;
  const password = document.getElementById("password").value;
  if(localStorage.isLogged !== "true"){
  if (email !== "" && password !== "" ) {
    await axios
      .post(API, {
        email: email,
        password: password,
      })
      .then((data) => {
        localStorage.setItem("id", data.data.id);
        localStorage.setItem("isLogged", true);
        loggedIn()
      })
      .catch((err) => alert("Unable to log in"));
  }}else{
    alert("You are already logged in")
  }
}
