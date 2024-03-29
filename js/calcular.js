document.getElementById("formulario").addEventListener("submit", function(event) {
    event.preventDefault();
    var nombre = document.getElementById("nombre").value;
    var apellido = document.getElementById("apellido").value;
    var numero1 = parseFloat(document.getElementById("numero1").value);
    var numero2 = parseFloat(document.getElementById("numero2").value);
    var suma = numero1 + numero2;
    var resultadoDiv = document.getElementById("resultado");
    resultadoDiv.innerHTML = "Nombre: " + nombre + "<br>" +
                              "Apellido: " + apellido + "<br>" +
                              "Suma de los números: " + suma;
});

document.getElementById("limpiar").addEventListener("click", function() {
// Limpiar los campos del formulario
document.getElementById("formulario").reset();

// Limpiar el resultado mostrado
document.getElementById("resultado").innerHTML = "";
});