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
    public partial class Login : System.Web.UI.Page
    {
        public  static string NombreMaes,CorreoMas;
        Connecion conn = new Connecion();
        public static string fecha = DateTime.Now.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pass, correo ;
            UsuarioTableAdapter dd = new UsuarioTableAdapter();
            pass = Password.Text;
            correo = TextBox2.Text;
            if(correo == dd.sacarcontra(correo) && pass == dd.sacarcontrase(correo))
            {
                
                
                if (dd.ScalarQuery(correo) == "2")
                {
                    CorreoMas = correo;
                    NombreMaes = dd.sacarnombre(correo);
                    Server.Transfer("InicioAdm.aspx");
                    
                    
                }
                else if (dd.ScalarQuery(correo) == "3")
                {
                    CorreoMas = correo;
                    NombreMaes = dd.sacarnombre(correo);

                    try
                    {

                        string sa = null;
                        UsuarioTableAdapter uss = new UsuarioTableAdapter();
                        sa = uss.sacarcorreo(CorreoMas).ToString();

                        conn.Consulta("insert into Carro values(" + sa + ", '" + fecha + "')");


                    }
                    catch (Exception ex)
                    {
                        Label1.Text = ex.Message;
                    }

                    Server.Transfer("IniUsuario.aspx");
                   

                }
                else if (dd.ScalarQuery(correo) == "1")
                {
                    CorreoMas = correo;
                    NombreMaes = dd.sacarnombre(correo);
                    try
                    {

                        string sa = null;
                        UsuarioTableAdapter uss = new UsuarioTableAdapter();
                        sa = uss.sacarcorreo(CorreoMas).ToString();

                        conn.Consulta("insert into Carro values(" + sa + ", '" + fecha + "')");


                    }
                    catch (Exception ex)
                    {
                        Label1.Text = ex.Message;
                    }
                    Server.Transfer("inicioVend.aspx");
                

                }
                else if (dd.ScalarQuery(correo) == "4")
                {
                    CorreoMas = correo;
                    NombreMaes = dd.sacarnombre(correo);
                    Server.Transfer("inicioRecep.aspx");


                }
            }
            else
            {
                Label1.Text = "Contraseña o correo no valido ";
            }

        }
    }
}