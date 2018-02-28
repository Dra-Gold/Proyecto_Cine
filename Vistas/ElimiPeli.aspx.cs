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
    public partial class ElimiPeli : System.Web.UI.Page
    {
        Connecion conn = new Connecion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Consulta("select Pelicula.NombreP,Gene.DescripcionG,Idioma.DescripcionI,Pelicula.Director,Pelicula.Sinopsis,Pelicula.Imagen from Pelicula,Gene,Idioma  where [IdPelicula] = "+ListBox1.SelectedValue.ToString() +" and  Pelicula.Idioma =Idioma.Id  and Gene.Id = Pelicula.Genero ");
                SqlDataAdapter adapter = new SqlDataAdapter(conn.Cmd);
                DataTable tb = new DataTable();
                conn.Cerrar();
                adapter.Fill(tb);
                GridView1.DataSource = tb;
                DataBind();
            }
            catch (Exception ee)
            {
                Label1.Text = ee.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string id;
                int codigo = 0;
                id = ListBox1.SelectedValue.ToString();
                int.TryParse(id, out codigo);
                CineVEntities cine = new CineVEntities();
                Pelicula peli = cine.Pelicula.Find(codigo);
                cine.Pelicula.Remove(peli);
                cine.SaveChanges();
                Label1.Text = "Pelicula Eliminada";
                DataBind();
            }
            catch (Exception ee)
            {
                Label1.Text = ee.Message;
            }
            

        }


    }
}