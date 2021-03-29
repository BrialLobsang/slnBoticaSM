using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using CapaEntidad;
using System.Data;//buffer de memoria

namespace CapaNegocio.Interfaces
{
    interface IUsuario
    {
        bool Loguear(UsuarioE usuario);
        bool Agregar(UsuarioE usuario);
        bool Actualizar(UsuarioE usuario);
        bool Eliminar(String usuario);
    }
}
