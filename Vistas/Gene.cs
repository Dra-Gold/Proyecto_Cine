//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Vistas
{
    using System;
    using System.Collections.Generic;
    
    public partial class Gene
    {
        public Gene()
        {
            this.Pelicula = new HashSet<Pelicula>();
        }
    
        public string Id { get; set; }
        public string DescripcionG { get; set; }
    
        public virtual ICollection<Pelicula> Pelicula { get; set; }
    }
}
