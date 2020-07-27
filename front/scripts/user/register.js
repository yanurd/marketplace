document.getElementById("registerUser").addEventListener("click", register)

async function register(event){
  event.preventDefault();
  const API = "http://localhost:5000/register"
  const name = document.getElementById("name").value;
  const lastName = document.getElementById("lastName").value
  const email = document.getElementById("email").value
  const password = document.getElementById("password").value

  if ( name !== "" & lastName !== "" && email !=="" && password !==""){
    await axios.post(API, {
      name: name,
      lastName: lastName,
      email: email,
      password: password
    })
      .then(data => {
        if (data.status === 200){
          alert("You have been registered succesfully")
        }else{
          alert("Whoops! something went wrong, and I don't know why.")
        }
      })
      .catch(err => alert("Unable to register"))
  } 
}