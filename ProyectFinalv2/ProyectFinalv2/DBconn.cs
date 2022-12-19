using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace ProyectFinalv2
{
    public class DBconn
    {
        public static SqlConnection obtenerConexion()

        {


            string s = System.Configuration.ConfigurationManager.ConnectionStrings["Prueba"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            return conexion;



        }

    }
}