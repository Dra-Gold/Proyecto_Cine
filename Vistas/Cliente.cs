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
    
    public partial class Cliente
    {
        public Cliente()
        {
            this.Venta = new HashSet<Venta>();
        }
    
        public string RutCli { get; set; }
        public Nullable<decimal> Id { get; set; }
        public string Nombre { get; set; }
        public Nullable<decimal> Edad { get; set; }
        public string contraseña { get; set; }
    
        public virtual ICollection<Venta> Venta { get; set; }
    }
}
