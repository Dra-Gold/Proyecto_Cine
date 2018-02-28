﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vistas.DataSet1TableAdapters;
using System.Net.Mail;
using Modelo;

namespace Vistas
{
    public partial class RecupeContra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UsuarioTableAdapter dd = new UsuarioTableAdapter();
            string correo = TextBox2.Text;
            string ss = dd.sacarcontra(correo);
            
 
            
            if(correo == ss)
            {
                string pass = dd.sacarcontrase(correo);
                string nombre = dd.sacarnombre(correo);
                System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();

                //Direccion de correo electronico a la que queremos enviar el mensaje
                mmsg.To.Add(correo);

                //Nota: La propiedad To es una colección que permite enviar el mensaje a más de un destinatario

                //Asunto
                mmsg.Subject = "Recuperar Contraseña ";
                mmsg.SubjectEncoding = System.Text.Encoding.UTF8;

                //Direccion de correo electronico que queremos que reciba una copia del mensaje
               

                //Cuerpo del Mensaje
                mmsg.Body = "Hola "+nombre+ " la contraseña asociada a su correo es "+ pass + "";
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
                    Label1.Text = "Mensaje Enviado ";
                }
                catch (System.Net.Mail.SmtpException ex)
                {
                    Label1.Text = ex.Message;//Aquí gestionamos los errores al intentar enviar el correo
                }



            }
            else
            {
                Label1.Text = "Usuario no ok";
            }
        }
    }
}