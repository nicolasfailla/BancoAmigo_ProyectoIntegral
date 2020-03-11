function enviarDatosUsuarios () {

let usuarioEnviado = document.getElementById("usuarioCuenta").value;
let claveEnviada = document.getElementById("claveCuenta").value;

console.log(usuarioEnviado);
console.log(claveEnviada);
/*

fetch("http://ip/usuario:?" + usuarioEnviado + "&" + claveEnviada, 
{method: 'POST'}


 
 )
  .then(function(response) {
    return response.json();
  })
  .then(function(myJson) {
    console.log(myJson);
  });
}
*/
}

document.getElementById("loginBtn").addEventListener("click", enviarDatosUsuarios);