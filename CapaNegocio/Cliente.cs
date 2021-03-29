using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using CapaDatos;

namespace CapaNegocio
{
    public class Cliente : Interfaces.ICliente
    {
        //llamar a la capa de datos
        private Datos datos = new DatosSQL();
        //propiedad de sol lectura para el mensaje de PA
        private string mensaje;
        public string Mensaje
        {
            get { return mensaje; }
        }

        public bool Actualizar(string codCliente, string TipoDocumento, string NumDocumento, string Nombres, string ApPaterno, string ApMaterno, string Direccion)
        {
            throw new NotImplementedException();
        }

        public bool Agregar(string codCliente, string TipoDocumento, string NumDocumento, string Nombres, string ApPaterno, string ApMaterno, string Direccion)
        {
            //traer la fila con el resultado codError y el mensaje
            DataRow fila = datos.TraerDataRow("spAgregarEscuela", codCliente, TipoDocumento, NumDocumento, Nombres, ApPaterno, ApMaterno, Direccion);
            //traer el codError y el mensaje
            byte codError = Convert.ToByte(fila["CodError"]);
            mensaje = fila["Mensaje"].ToString();
            if (codError == 0) return true;
            else return false;
        }

        public DataSet Buscar(string texto, string criterio)
        {
            throw new NotImplementedException();
        }

        public bool Eliminar(string codCliente)
        {
            throw new NotImplementedException();
        }

        public DataSet Listar()
        {
            return datos.TraerDataSet("spListarCliente");
        }
    }
}
