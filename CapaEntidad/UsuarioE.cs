using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Runtime.Serialization;//serializar la clase

namespace CapaEntidad
{
    [DataContract]
    public class UsuarioE
    {
        [DataMember]
        public string cUsuario { get; set; }
        [DataMember]
        public string Contrasena { get; set; }
    }
}
