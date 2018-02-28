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
    public partial class EliminarFunci : System.Web.UI.Page
    {
        Connecion conn = new Connecion();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
            {
                conn.Consulta("delete from Entrada where NFun =" + ListBox1.SelectedValue.ToString() + "");
                conn.Consulta("delete from Funcion where Codigo =" + ListBox1.SelectedValue.ToString() + "");
                Label1.Text = "Funcion Eliminada";
                DataBind();

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Consulta("Select Funcion.NombreF,Pelicula.NombreP,Pelicula.Imagen,Estreno.DescripcionE,Funcion.Dia,Sucursal.NombreS,Sala.NSala,Funcion.HoraI,Funcion.HoraT   from  Funcion,Pelicula,Sala,Sucursal,Estreno where Funcion.CodPel=" + ListBox1.SelectedValue.ToString() + " and Funcion.CodPel=Pelicula.IdPelicula and Estreno.Id=Funcion.Estreno and Funcion.SalaId=Sala.IdSala and Sala.Sucur=Sucursal.CodigoCine ");
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
    }
}