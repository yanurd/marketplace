
document.getElementById("submit").addEventListener("click", login)

async function login(event){
  event.preventDefault();
  const API = "http://localhost:5000/login"
  const email = document.getElementById("email").value;
  const password = document.getElementById("password").value

  if (email !== "" && password !== ""){
    await axios.post(API, {
      email: email,
      password: password
    })
    .then(data => {
      let id = localStorage.setItem("id", data.data.id);
      let isLogged = localStorage.setItem("isLogged", true)
    })
    .catch(err => alert("Unable to log in"))
  }
}