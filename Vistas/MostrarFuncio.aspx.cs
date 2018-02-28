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
    public partial class MostrarFuncio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Connecion conn = new Connecion();
            try
            {
                conn.Consulta("Select Funcion.NombreF,Pelicula.NombreP,Pelicula.Imagen,Estreno.DescripcionE,Funcion.Dia,Sucursal.NombreS,Sala.NSala,Funcion.HoraI,Funcion.HoraT,Funcion.Precio   from Funcion,Pelicula,Sala,Sucursal,Estreno where Funcion.CodPel=Pelicula.IdPelicula and Estreno.Id=Funcion.Estreno and Funcion.SalaId=Sala.IdSala and Sala.Sucur=Sucursal.CodigoCine ");
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

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            DataBind();
        }
    }
}