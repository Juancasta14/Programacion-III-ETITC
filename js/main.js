document.getElementById("formularioF").addEventListener("submit", function(event) {
    event.preventDefault();
    var numNumebers = document.getElementById("numeroF").value;
    var numeroF=0;
    var resultadoF=document.getElementById("resultadoF");
    if(numNumebers <=0){
        resultadoF.innerHTML = "Ingrese números mayores a 0";

    }else{
        for(var i =0; i <=numNumebers; i++){
            numeroF = numeroF+i;
        }
    resultadoF.innerHTML = "Numero sucesión: " + numNumebers + "<br>"+
                            "Suma de los números: " + numeroF;  
    }
                  
});

document.getElementById("limpiarF").addEventListener("click", function() {
    document.getElementById("formularioF").reset();
    document.getElementById("resultadoF").innerHTML = "";
    });


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

