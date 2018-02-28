using Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class MostraPeli : System.Web.UI.Page
    {
       

        Connecion conn = new Connecion();
        protected void Page_Load(object sender, EventArgs e)
        {
             

            try
            {
                conn.Consulta("select Pelicula.NombreP,Gene.DescripcionG,Idioma.DescripcionI,Pelicula.Director,Pelicula.Sinopsis,Pelicula.Imagen from Pelicula,Gene,Idioma  where  Pelicula.Idioma =Idioma.Id  and Gene.Id = Pelicula.Genero ");
                SqlDataAdapter adapter = new SqlDataAdapter(conn.Cmd);
                DataTable tb = new DataTable();
                conn.Cerrar();
                adapter.Fill(tb);
                GridView1.DataSource = tb;
                
                DataList1.DataSource = tb;
                

                DataBind();
            }
            catch (Exception ee)
            {
               
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            DataBind();
        }
    }
}