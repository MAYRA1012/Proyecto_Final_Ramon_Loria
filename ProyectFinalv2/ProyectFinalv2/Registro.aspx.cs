using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectFinalv2
{
    public partial class usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bregistrar_Click(object sender, EventArgs e)
        {
            CSUsuario.correo = tcorreo.Text;
            CSUsuario.clave= tclave.Text;
            CSUsuario.nombre = tnombre.Text;
            CSUsuario.tipo = dtipo.Text;

           if (CSUsuario.Agregar() > 0)
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('USUARIO REGISTRADO ..');if(alert) {window.location='Loguin.aspx';}</script>");
            }
           else
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('Error de Registro..');if(alert) {window.location='Loguin.aspx';}</script>");

            }



        }


        
    }
}