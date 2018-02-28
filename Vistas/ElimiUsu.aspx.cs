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
    public partial class ElimiUsu : System.Web.UI.Page
    {
        Connecion conn = new Connecion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Consulta("select Usuario.Correo,Usuario.Contraseña,Usuario.Nombre,Tipo.DescripcionT from Usuario,Tipo where Usuario.Id= "+ListBox1.SelectedValue.ToString()+" and Usuario.Tipo=Tipo.Codigo");
                SqlDataAdapter adapter = new SqlDataAdapter(conn.Cmd);
                DataTable tb = new DataTable();
                conn.Cerrar();
                adapter.Fill(tb);
                GridView1.DataSource = tb;
                DataBind();
            }
            catch (Exception ee)
            {
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Consulta("delete from Usuario where Id =" + ListBox1.SelectedValue.ToString() + "");
                DataBind();

            }
            catch (Exception ex)
            {
                
            }
        }
    }
}