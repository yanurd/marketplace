document.getElementById("emailupdate").addEventListener("click", updateEmail)
document.getElementById("passwordupdate").addEventListener("click", updatePassword)

async function updateEmail(e){
  e.preventDefault();
  const API = "http://localhost:5000/emailUpdate"
  const email = document.getElementById("emailup").value
  if (email !== "" ){
    await axios.post(API, {
      email: email,
      id: localStorage.id
    })
    .then(data => console.log(data))
    .catch(err => alert("Unable to update email"))
  }else {
    alert("Email input is empty")
  }

}

async function updatePassword(e){
  e.preventDefault()
  const API = "http://localhost:5000/passwordUpdate"
  const psw1 = document.getElementById("passwordup").value
  const psw2 = document.getElementById("passwordupr").value
  if (psw1 !== psw2){
    alert("Passwords are not the same")
  }else{
    console.log(psw1)
    await axios.post(API, {
      password: psw1,
      id: localStorage.id
    }).then(data => alert("Password records have been updated"))
    .catch(err => alert("Something went wrong updating your password"))
  }
}