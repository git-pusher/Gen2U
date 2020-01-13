var contador = 0; //poner un id unico a cada elemento clonado
var elemArrastrableId = ""; 

function start(e) {
    e.dataTransfer.effectAllowed = "move"; //define el efecto mover
    //Guarda en memoria el elemento a mover
    e.dataTransfer.setData("Data", e.target.id);
    e.target.style.opacity = "0.4";
    elemArrastrableId = e.target.id;
}

function end(e) {
    e.target.style.opacity = '';
    e.dataTransfer.clearData("Data");
    elemArrastrableId = "";
}

function enter(e)
{
    e.target.style.border = "5px dotted #555";
}


function leave(e)
{
    e.target.style.border = "";
}

function over(e) {
    //el elemento sobre el que nos arrastramos  
    var id = e.target.id; 
    //return false para que pueda soltar el elemento
    if ((id == "cuadro1") || (id == "cuadro3") || (id == "papelera"))
    {
        return false;
    }
    else {
        return true;
    }
}
//========================================================================
function drop(e) {
    var elementoArrastrado = e.dataTransfer.getData("Data");
    e.target.appendChild(document.getElementById(elementoArrastrado));
    e.target.style.border = "";
}
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
function eliminar(e)
{
    //dataTransfer contiene los datos de arrastre
    //getData contiene el tipo y el valor
    var elementoArrastrado = document.getElementById       
        (e.dataTransfer.getData("Data"));
    elementoArrastrado.parentNode.removeChild(elementoArrastrado);
    e.target.style.border = "";
}

function clonar(e)
{
    var elementoArrastrado = document.getElementById(e.dataTransfer.getData("Data"));
    elementoArrastrado.style.opacity = "";
    var elementoClonado = elementoArrastrado.cloneNode(true);
    elementoClonado.id = "ElemeClonado" + contador;
    contador++;
    elementoClonado.style.position = "static";
    e.target.appendChild(elementoClonado);
    e.target.style.border = "0";
}