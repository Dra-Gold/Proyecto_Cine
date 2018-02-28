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
    public partial class AgregarFun : System.Web.UI.Page
    {
        Connecion conn = new Connecion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string  codp , cods, horaI, HoraT,fe,estren,nombre , asientos , tipo;
            int asi = 0;
            nombre = TextBox4.Text;
            codp = ListBox1.SelectedValue.ToString();
            cods = ListBox3.SelectedValue.ToString();
            fe = fecha.Value.ToString();
            horaI = TextBox2.Text;
            HoraT = TextBox3.Text;
            estren= ListBox4.SelectedValue.ToString();

            SalaTableAdapter sala = new SalaTableAdapter();
            FuncionTableAdapter funi = new FuncionTableAdapter();
            asientos = sala.sacasala(cods).ToString();
            tipo = sala.sacarTipo(cods);
            int.TryParse(asientos, out asi);
            int precio = 0, preciot = 0, preciof = 0; ;

            if (estren == "1")
            {
                precio = 2500;
            }
            else if ((estren == "2"))
            {
                precio = 1500;
            }
           
            if(tipo == "2D")
            {
                preciot = 600;
            }
            else if (tipo == "3D")
            {
                preciot = 1200;
            }
            preciof = precio + preciot;

            Random obj = new Random();
            string posibles = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
            int longitud = posibles.Length;
            char letra;
            int longitudnuevacadena = 25;

            try
            {
                conn.Consulta("insert into Funcion values('" + nombre + "'," + codp + ",'" + cods + "','" + estren + "','" + fe + "','" + horaI + "','" + HoraT + "'," + preciof + ")");
                Label1.Text = "Funcion Agregada";

                string codul = funi.ScalarQuery().ToString();

                for (int i = 0; i < asi; i++)
                {
                    
                    string nuevacadena = "";

                    for ( int o = 0; o < longitudnuevacadena; o++)
                    {
                        letra = posibles[obj.Next(longitud)];
                        nuevacadena += letra.ToString();
                    }

                    conn.Consulta("insert into Entrada values(" + codul + ",'" + nuevacadena + "'," + preciof + ",0 )");
                }

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}