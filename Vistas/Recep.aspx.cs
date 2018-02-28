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
    public partial class Recep : System.Web.UI.Page
    {
        Connecion conn = new Connecion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Consulta("Select Funcion.NombreF,Pelicula.NombreP,Pelicula.Imagen,Estreno.DescripcionE,Funcion.Dia,Sucursal.NombreS,Sala.NSala,Funcion.HoraI,Funcion.HoraT   from Entrada,Funcion,Pelicula,Sala,Sucursal,Estreno where Entrada.NRecep='" + TextBox1.Text + "' and Entrada.NFun=Funcion.Codigo and Funcion.CodPel=Pelicula.IdPelicula and Estreno.Id=Funcion.Estreno and Funcion.SalaId=Sala.IdSala and Sala.Sucur=Sucursal.CodigoCine");

                SqlDataAdapter adapter = new SqlDataAdapter(conn.Cmd);
                DataTable tb = new DataTable();
                conn.Cerrar();
                adapter.Fill(tb);
                GridView1.DataSource = tb;
                DataBind();
            }
            catch 
            {
                
            }
        }
    }
}