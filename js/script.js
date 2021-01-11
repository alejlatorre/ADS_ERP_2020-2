// Para grabar inserción 
function ConfirmInsert()
{
    var respuesta = confirm("¿Estas seguro/a que deseas grabar el registro?");

    if (respuesta == true)
    {
        return true;
    }
    else
    {
        return false;
    }
}

function ConfirmDelete()
{
    var respuesta = confirm("¿Estás seguro/a que deseas eliminar el registro?");

    if (respuesta == true)
    {
        return true;
    }
    else
    {
        return false;
    }
}
