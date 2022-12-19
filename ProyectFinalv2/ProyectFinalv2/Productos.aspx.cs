using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectFinalv2
{
    public partial class Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bregistrar_Click(object sender, EventArgs e)
        {
           



        }

        protected void bregistrar2_Click(object sender, EventArgs e)
        {
            CSProductos.nombreProd = tnombreProd.Text;
            CSProductos.segmento = tSegmento.Text;
            CSProductos.categoria = tcategoria.Text;
            CSProductos.tipo = dtipo.Text;
            CSProductos.precio = Convert.ToInt32(tprecio.Text);

            if (CSProductos.AgregarProducto() > 0)
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('PRODUCTO REGISTRADO ..');if(alert) {window.location='Productos.aspx';}</script>");
            }
            else
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('Error de Registro..');if(alert) {window.location='Productos.aspx';}</script>");

            }
        }

        protected void bactualizar2_Click(object sender, EventArgs e)
        {

            CSProductos.nombreProd = tnombreProd.Text;
            CSProductos.segmento = tSegmento.Text;
            CSProductos.categoria = tcategoria.Text;
            CSProductos.tipo = dtipo.Text;
            CSProductos.precio = Convert.ToInt32(tprecio.Text);
            CSProductos.id_Prod = Convert.ToInt32(DDownProd.Text);

            if (CSProductos.ModificarProd() > 0)
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('PRODUCTO ACTUALIZADO ..');if(alert) {window.location='Productos.aspx';}</script>");
            }
            else
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('Error de Registro..');if(alert) {window.location='Productos.aspx';}</script>");

            }



        }

        protected void bborrar2_Click(object sender, EventArgs e)
        {

            CSProductos.id_Prod = Convert.ToInt32(DDownProd.Text);

            if (CSProductos.EliminarProd() > 0)
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('PRODUCTO BORRADO ..');if(alert) {window.location='Productos.aspx';}</script>");
            }
            else
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('Error de Registro..');if(alert) {window.location='Productos.aspx';}</script>");

            }




        }

        protected void Regresar2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UsarioAdmin.aspx");
        }
    }
}