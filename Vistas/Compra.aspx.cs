using Microsoft.Reporting.WebForms;
using Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vistas.DataSet1TableAdapters;
using System.IO;
using System.Net.Mail;

namespace Vistas
{
    public partial class Compra : System.Web.UI.Page
    {
        Connecion conn = new Connecion();
        private static string fecha = Login.fecha;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                conn.Consulta("Select Funcion.Codigo,Funcion.NombreF,Pelicula.NombreP,Pelicula.Imagen,Estreno.DescripcionE,Funcion.Dia,Sucursal.NombreS,Sala.NSala,Funcion.HoraI,Funcion.HoraT,Funcion.Precio   from Funcion,Pelicula,Sala,Sucursal,Estreno where Funcion.CodPel=Pelicula.IdPelicula and Estreno.Id=Funcion.Estreno and Funcion.SalaId=Sala.IdSala and Sala.Sucur=Sucursal.CodigoCine ");
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

            ////string sa=null, co;
            
            ////try
            ////{
                
            ////    co = Login.CorreoMas;
            ////    UsuarioTableAdapter uss = new UsuarioTableAdapter();
            ////    sa = uss.sacarcorreo(co).ToString();

            ////    conn.Consulta("insert into Carro values(" + sa + ", '"+ fecha + "')");
               

            ////}
            ////catch (Exception ex)
            ////{
            ////    Label1.Text = ex.Message;
            ////}


            cargar();



        }

        private void cargar()
        {
            string sa = null, co;
            co = Login.CorreoMas;
            UsuarioTableAdapter uss = new UsuarioTableAdapter();
            sa = uss.sacarcorreo(co).ToString();
            try
            {
                conn.Consulta("select SubCarri.Nsc,Funcion.Codigo,Funcion.NombreF,Funcion.Dia,Sucursal.NombreS,Sala.NSala,Entrada.Precio,Entrada.NBoleto from  Carro,SubCarri,Entrada,Funcion,Sala,Sucursal where Carro.Fecha='" + fecha + "' and Carro.Codig=" + sa + " and Carro.NCarro=SubCarri.Carr and SubCarri.NBoleto = Entrada.NBoleto and EstVen=2 and Entrada.NFun = Funcion.Codigo and Funcion.SalaId=Sala.IdSala and Sala.Sucur=Sucursal.CodigoCine");
                SqlDataAdapter adapter = new SqlDataAdapter(conn.Cmd);
                DataTable tb = new DataTable();
                conn.Cerrar();
                adapter.Fill(tb);
                GridView2.DataSource = tb;
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "AgregarCarrito")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                int id = Convert.ToInt32(GridView1.DataKeys[index].Values[0]);
                EntradaTableAdapter entra = new EntradaTableAdapter();
                string en = entra.SFun(id).ToString();
                CarroTableAdapter carro = new CarroTableAdapter();
                string carr = carro.Sacarca(fecha).ToString();
              
                try
                {
                    conn.Consulta("insert into SubCarri values( " + en + "," + carr + " )");
                    conn.Consulta(" update  Entrada set [EstVen] = 2  where  [NBoleto] =" + en + "");
                    string Precio = GridView1.Rows[index].Cells[9].Text;
                    string Preciolbl = Label2.Text;
                    int tot=0,tota=0,to=0;
                    int.TryParse(Precio,out tot);
                    int.TryParse(Preciolbl, out to);
                    tota = tot + to;
                    Label2.Text = tota.ToString();

                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                }

                cargar();


            }
        }

        protected void GridView1_Load(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Eliminar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                int id = Convert.ToInt32(GridView2.DataKeys[index].Values[0]);

                string Acuerdo = GridView2.Rows[index].Cells[0].Text;
                int su = 0;
                int.TryParse(Acuerdo, out su);
                try
                {

                    conn.Consulta("delete from SubCarri where Nsc = " + id + " ");
                    conn.Consulta(" update  Entrada set [EstVen] = 0  where  [NBoleto] =" + su + "");

                    string Precio = GridView2.Rows[index].Cells[5].Text;
                   
                    string Preciolbl = Label2.Text;
                    int tot = 0, tota = 0, to = 0;
                    int.TryParse(Precio, out tot);
                    int.TryParse(Preciolbl, out to);
                    tota = to-tot ;
                    Label2.Text = tota.ToString();

                    cargar();


                    



                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                }


            }
          




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<string> boletos = new List<string>();
            int nn;
            EntradaTableAdapter en = new EntradaTableAdapter();
            FuncionTableAdapter fu = new FuncionTableAdapter();
            string valorcol2 =null;
            foreach (GridViewRow row in GridView2.Rows)
            {
                 boletos.Add(row.Cells[0].Text);
                 valorcol2 = row.Cells[0].Text;

            }
            string co = Login.CorreoMas;

            


            foreach (string item in boletos)
            {

                try
                {
                    int c;
                    int.TryParse(item, out c);

                    DataSet1.EntradaDataTable ss = new DataSet1.EntradaDataTable();
                    DataSet1.FuncionDataTable ff = new DataSet1.FuncionDataTable();

                    en.FillBy(ss, c);

                    ReportDataSource daf = new ReportDataSource();
                    daf.Value = ss;
                    daf.Name = "Entrada";
                    ReportDataSource da = new ReportDataSource();
                    da.Value = ss;
                    da.Name = "DataSet1";

                    Random obj = new Random();
                    string posibles = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
                    int longitud = posibles.Length;
                    char letra;
                    int longitudnuevacadena = 35;
                    

                    //ReportViewer1.LocalReport.DataSources.Clear();
                    //ReportViewer1.LocalReport.DataSources.Add(da);
                    //ReportViewer1.LocalReport.DataSources.Add(daf);
                    //ReportViewer1.LocalReport.ReportEmbeddedResource = "Report1.rdlc ";
                    //ReportViewer1.LocalReport.ReportPath = @"Report1.rdlc";
                    //ReportViewer1.LocalReport.Refresh();
                    ReportViewer vis = new ReportViewer();
                    vis.ProcessingMode = ProcessingMode.Local;
                    vis.LocalReport.ReportPath = "Report1.rdlc";
                    vis.LocalReport.DataSources.Add(da);
                    vis.LocalReport.DataSources.Add(daf);
                    Warning[] warnings = null;
                    string[] streamIds = null;
                    string mimeType = string.Empty;
                    string encoding = string.Empty;
                    string extension = string.Empty;
                    string filetype = string.Empty;

                    string nuevacadena = "";

                    for (int o = 0; o < longitudnuevacadena; o++)
                    {
                        letra = posibles[obj.Next(longitud)];
                        nuevacadena += letra.ToString();
                    }

                    string exportType = "PDF";
                    filetype = exportType == "PDF" ? "PDF" : exportType;
                    byte[] bytes = vis.LocalReport.Render("PDF", null, out mimeType, out encoding, out extension, out streamIds, out warnings);

                    string ruta = @"C:\Cine\Vistas\Respal\";

                    if (Directory.Exists(ruta))
                    {
                        FileStream fs = new FileStream(@"C:\Cine\Vistas\Respal\" + nuevacadena + ".pdf", FileMode.OpenOrCreate);

                        fs.Write(bytes, 0, bytes.Length);
                        fs.Close();
                    }
                    else
                    {
                        Label1.Text = "no existe";
                    }



                    conn.Consulta(" update  Entrada set [EstVen] = 1  where  [NBoleto] =" + item + "");
                    int.TryParse(item, out nn);
                    string codigo = en.sacarcodigore(nn);
                    string fun = fu.SacarFuncionBoleto(nn);
                    

                    System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();
                    //Direccion de correo electronico a la que queremos enviar el mensaje
                    mmsg.To.Add(co);

                    //Nota: La propiedad To es una colección que permite enviar el mensaje a más de un destinatario

                    //Asunto
                    mmsg.Subject = "Venta de Boleto ";
                    mmsg.SubjectEncoding = System.Text.Encoding.UTF8;

                    //Direccion de correo electronico que queremos que reciba una copia del mensaje


                    //Cuerpo del Mensaje

                    mmsg.Attachments.Add(new Attachment(@"C:\Cine\Vistas\Respal\" + nuevacadena + ".pdf"));
                    mmsg.BodyEncoding = System.Text.Encoding.UTF8;
                    mmsg.IsBodyHtml = false; //Si no queremos que se envíe como HTML

                    //Correo electronico desde la que enviamos el mensaje
                    mmsg.From = new System.Net.Mail.MailAddress("proyectoprogra04@gmail.com");



                    /*-------------------------CLIENTE DE CORREO----------------------*/

                    //Creamos un objeto de cliente de correo
                    System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();

                    //Hay que crear las credenciales del correo emisor
                    cliente.Credentials = new System.Net.NetworkCredential("proyectoprogra04@gmail.com", "123456otra");


                    //Lo siguiente es obligatorio si enviamos el mensaje desde Gmail

                    cliente.Port = 587;
                    cliente.EnableSsl = true;


                    cliente.Host = "smtp.gmail.com"; //Para Gmail "smtp.gmail.com";



                    /*-------------------------ENVIO DE CORREO----------------------*/

                    try
                    {
                        //Enviamos el mensaje      
                        cliente.Send(mmsg);

                    }
                    catch (System.Net.Mail.SmtpException ex)
                    {
                        Label1.Text = ex.Message;//Aquí gestionamos los errores al intentar enviar el correo
                    }

                    


                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                }
            }

            try
            {
                SubCarriTableAdapter carri = new SubCarriTableAdapter();
                string Precio = GridView2.Rows[0].Cells[0].Text;
                int cccc = 0;
                int.TryParse(Precio, out cccc);
                string carr = carri.sacarcarro(cccc).ToString();
                int tot = 0;
                int.TryParse(Label2.Text, out tot);
               
                conn.Consulta("insert into Factura values(" + carr + "," + tot + ")");


            }
            catch (Exception ex)
            {
                Label3.Text = ex.Message;
            }

            UsuarioTableAdapter dd = new UsuarioTableAdapter();
            string correoMas = Login.CorreoMas;
            string NombreMaes = dd.sacarnombre(correoMas);
            fecha = DateTime.Now.ToString();
            try
            {

                string sa = null;
                UsuarioTableAdapter uss = new UsuarioTableAdapter();
                sa = uss.sacarcorreo(correoMas).ToString();

                conn.Consulta("insert into Carro values(" + sa + ", '" + fecha + "')");


            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }

            Label2.Text = "0";
            Label1.Text = "Compra Realizada";
            GridView2.DataSource = null;
            GridView2.DataBind();
        }
        
    }
}