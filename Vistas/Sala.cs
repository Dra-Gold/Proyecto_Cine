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
    
    public partial class Sala
    {
        public Sala()
        {
            this.Funcion = new HashSet<Funcion>();
        }
    
        public string IdSala { get; set; }
        public string Sucur { get; set; }
        public Nullable<decimal> NSala { get; set; }
        public string Tipo { get; set; }
        public Nullable<decimal> Asientos { get; set; }
    
        public virtual ICollection<Funcion> Funcion { get; set; }
        public virtual Sucursal Sucursal { get; set; }
    }
}
