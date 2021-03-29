using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Cliente
{
    public partial class Login : System.Web.UI.Page
    {
        private ServiceReference1.wsUsuarioSoapClient servicio = new ServiceReference1.wsUsuarioSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            String user = loginName.Text;
            String pass = loginPass.Text;
            string[] valores = servicio.Loguear(user, pass).ToArray();
            mensaje.Text = "  ";
            if (valores[0] == "0" && valores[1] == "Empleado")
            {
                mensaje.Text = " ";
                FormsAuthentication.RedirectFromLoginPage(user, false);
            }
            else
            {
                mensaje.Text = "Usuario y/o contraseña incorrectos";
            }
        }
    }
}