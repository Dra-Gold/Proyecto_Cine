using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class AgregarPeli : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string  Nombre, Gen,  idio, Direc, Sino;
            
            Nombre = TextBox2.Text;
            Gen = ListBox1.SelectedValue.ToString();
            idio = ListBox2.SelectedValue.ToString();
            Direc = TextBox6.Text;
            Sino = TextArea1.InnerText;
 
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            Image1.ImageUrl = FileUpload1.FileName;

            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    CineVEntities cine =new  CineVEntities();
                    Pelicula peli = new Pelicula();
                    peli.NombreP = Nombre;
                    peli.Genero = Gen;
                    peli.Idioma = idio;
                    peli.Director = Direc;
                    peli.Sinopsis = Sino;
                    peli.Imagen = bytes;
                    cine.Pelicula.Add(peli);
                    cine.SaveChanges();
                    Label1.Text = "Pelicula Agregada";


                }
            }
        }

        
    }
}