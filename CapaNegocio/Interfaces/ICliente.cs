using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;//buffer de memoria

namespace CapaNegocio.Interfaces
{
    interface ICliente
    {
        //DECLARA METODOS DE UNA CLASE(HERENCIA Y POLIMORFISMO)
        DataSet Listar();
        bool Agregar(string codCliente, string TipoDocumento, string NumDocumento, string Nombres, string ApPaterno, string ApMaterno, string Direccion);
        bool Eliminar(string codCliente);
        bool Actualizar(string codCliente, string TipoDocumento, string NumDocumento, string Nombres, string ApPaterno, string ApMaterno, string Direccion);
        DataSet Buscar(string texto, string criterio);
    }
}
