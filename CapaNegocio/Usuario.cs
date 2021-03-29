using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using CapaDatos;

namespace CapaNegocio
{
    public class Usuario : Interfaces.IUsuario
    {
        private Datos datos = new DatosSQL();

        private string mensaje;

        public string Mensaje
        {
            get { return mensaje; }
        }
        public bool Actualizar(UsuarioE usuario)
        {
            throw new NotImplementedException();
        }

        public bool Agregar(UsuarioE usuario)
        {
            try
            {
                DataRow fila = datos.TraerDataRow("spAgregarUsuario", usuario.cUsuario, usuario.Contrasena);
                mensaje = fila["Mensaje"].ToString();
                byte codError = Convert.ToByte(fila["CodError"]);
                if (codError == 0) return true;
                else return false;
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
                return false;
            }
        }

        public bool Eliminar(string usuario)
        {
            throw new NotImplementedException();
        }

        public bool Loguear(UsuarioE usuario)
        {
            try
            {
                DataRow fila = datos.TraerDataRow("spLoginUsuario", usuario.cUsuario, usuario.Contrasena);
                mensaje = fila["Mensaje"].ToString();
                byte codError = Convert.ToByte(fila["CodError"]);
                if (codError == 0) return true;
                else return false;
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
                return false;
            }
        }
    }
}
