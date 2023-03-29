 let arrayGuardar=[];
 /*function Enviar(){
            var nombre=document.getElementById("nombre").value;  
            var ApellidoP=document.getElementById("app").value;
            var ApellidoM=document.getElementById("Apm").value;
            var edad=document.getElementById("edad").value;
            var fnac=document.getElementById("fnac").value;
            var Ciudad=document.getElementById("cdd").value;
            var Direccion=document.getElementById("direccion").value;
            var Numt=document.getElementById("numt").value;
            var sexo=document.getElementById("sexo").value;
            alert(nombre+" "+ApellidoP+" "+ApellidoM+" "+edad+" "+fnac+" "+Ciudad+" "+Direccion+" "+Numt+" "+sexo);
        }*/

var Enviar= function(){
    let lstForm = document.getElementsByClassName("form-control");
    for(var i =0; i< lstForm.length; i++) {
        arrayGuardar[i]= lstForm[i].value;
        console.log (lstForm[i].value);
    }
    fetch('./recibe.php', {
    method: 'POST',
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
    },
    body: JSON.stringify({ arrayGuardar})
})
   .then(response => response.json())
   .then(response => console.log(JSON.stringify(response)))
}


