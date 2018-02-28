using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vistas.DataSet1TableAdapters;

namespace Vistas
{
    public partial class AgreUsu : System.Web.UI.Page
    {
        Connecion conn = new Connecion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UsuarioTableAdapter dd = new UsuarioTableAdapter();
            string nombre, correo, pass,cod;
            nombre = TextBox1.Text;
            correo = TextBox2.Text;
            pass = Password.Text;
            cod = ListBox1.SelectedValue.ToString();
            string ss = dd.sacarcontra(correo);
            try
            {
                if (correo == ss)
                {
                    Label1.Text = "Correo Ya Usado ";
                    TextBox2.Text = "";
                }
                else
                {
                    conn.Consulta("insert into Usuario values('" + correo + "','" + pass + "','" + nombre + "','"+cod+"')");
                    Label1.Text = "Usuario Registrado";
                }

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}