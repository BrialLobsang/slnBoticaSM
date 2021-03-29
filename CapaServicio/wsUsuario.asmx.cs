using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;

using CapaNegocio;
using CapaEntidad;

namespace CapaServicio
{
    /// <summary>
    /// Descripción breve de wsUsuario
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class wsUsuario : System.Web.Services.WebService
    {

        //[WebMethod(Description = "Agregar un Usuario")]
        //public string [] Agregar(string Usuario, string Contrasena)
        //{
            //--Codigo a Implementar
            //UsuarioE usuarioE = new UsuarioE();
            //usuarioE.cUsuario = Usuario;
            //usuarioE.Contrasena = Contrasena;
        //}

        [WebMethod(Description = "login un Usuario")]
        public string[] Loguear(string Usuario, string Contrasena)
        {
            //Codigo a Implementar
            UsuarioE usuarioE = new UsuarioE();
            Usuario usuarioCl = new Usuario();
            usuarioE.cUsuario = Usuario;
            usuarioE.Contrasena = Contrasena;
            bool CodError = usuarioCl.Loguear(usuarioE);
            string[] valores = new string[2];
            if (CodError == true) valores[0] = "0";
            else valores[0] = "1";
            valores[1] = usuarioCl.Mensaje;
            return valores;
        }
    }
}
