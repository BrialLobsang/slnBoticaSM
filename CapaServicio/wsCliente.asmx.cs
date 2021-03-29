using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

using CapaNegocio;
using System.Data;

namespace CapaServicio
{
    /// <summary>
    /// Descripción breve de wsCliente
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class wsCliente : System.Web.Services.WebService
    {

        [WebMethod(Description = "AGREGAR CLIENTE")]

        public Boolean Agregar(string codCliente, string TipoDocumento, string NumDocumento, string Nombres, string ApPaterno, string ApMaterno, string Direccion)
        {
            Cliente cliente1 = new Cliente();
            return cliente1.Agregar(codCliente, TipoDocumento, NumDocumento, Nombres, ApPaterno, ApMaterno, Direccion);
        }
    }
}
