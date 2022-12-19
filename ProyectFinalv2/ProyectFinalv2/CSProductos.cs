using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace ProyectFinalv2
{
    public class CSProductos
    {
        public static int id_Prod { get; set; }
        public static string nombreProd { get; set; }
        public static string segmento{ get; set; }
        public static string categoria { get; set; }
        public static string tipo { get; set; }
        public static float precio { get; set; }


        public static int AgregarProducto()
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();

            try
            {

                using (Conn = DBconn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("InsertarProductos", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Nom_Produc", nombreProd));
                    cmd.Parameters.Add(new SqlParameter("@segmento", segmento));
                    cmd.Parameters.Add(new SqlParameter("@Categoria", categoria));
                    cmd.Parameters.Add(new SqlParameter("@tipo", tipo));
                    cmd.Parameters.Add(new SqlParameter("@Precio", precio));

                    retorno = cmd.ExecuteNonQuery();

                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;
        }

        public static int ModificarProd()
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBconn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ActualizaProductos", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Nom_Produc", nombreProd));
                    cmd.Parameters.Add(new SqlParameter("@segmento", segmento));
                    cmd.Parameters.Add(new SqlParameter("@Categoria", categoria));
                    cmd.Parameters.Add(new SqlParameter("@tipo", tipo));
                    cmd.Parameters.Add(new SqlParameter("@Precio", precio));
                    cmd.Parameters.Add(new SqlParameter("@codigo", id_Prod));
                    retorno = cmd.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;
        }



        public static int EliminarProd()
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();

            try
            {
                using (Conn = DBconn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("BorrarProductos", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@codigo", id_Prod));

                    retorno = cmd.ExecuteNonQuery();
                    string jscript = "<script>alert('YOUR BUTTON HAS BEEN CLICKED')</script>";

                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }
            return retorno;
        }

        public static int BuscarProducto(string cod)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBconn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ConsultaProductosFiltro", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@codigo", cod));
                    ;

                    // retorno = cmd.ExecuteNonQuery();
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.Read())
                        {
                            retorno = 1;
                            nombreProd = rdr["Nom_Produc"].ToString();
                            precio = float.Parse(rdr["precio"].ToString());
                        }

                    }


                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }

            return retorno;
        }




        public static DataTable Listar()
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            DataTable dt = new DataTable();

            try
            {
                using (Conn = DBconn.obtenerConexion())
                {

                    using (SqlCommand cmd = new SqlCommand("ConsultaProductosFiltro", Conn))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            using (SqlDataReader rdr = cmd.ExecuteReader())
                            {
                                if (rdr.Read())
                                {
                                    retorno = 1;

                                    nombreProd = rdr[0].ToString();
                                    segmento = rdr[1].ToString();
                                   

                                }

                            }
                        }
                    }
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                // Conn.Close();
            }
            return dt;
        }







    }
}