<%@ Page Title="" Language="C#" MasterPageFile="~/InicioAd.Master" AutoEventWireup="true" CodeBehind="InicioAdm.aspx.cs" Inherits="Vistas.InicioAdm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Estilos/bootstrap-theme.css" rel="stylesheet" />
    <link href="Estilos/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" >eCompany</a>
            <a class="navbar-brand"  href="Login.aspx">Salir</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Administrar Funcion<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a    href="AgregarFun.aspx" target="vista">Agregar Funcion</a></li>
                <li><a   href="EliminarFunci.aspx" target="vista">Eliminar Funcion</a></li>
                <li><a   href="ModiFunci.aspx" target="vista">Modificar Funicion</a></li>
                <li><a  href="MostrarFuncio.aspx" target="vista">Mostrar Todas Las Funciones</a></li>
              </ul>
            </li>
              <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Administrar Peliculas<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a   href="AgregarPeli.aspx"  target="vista">Agregar Pelicula</a></li>
                <li><a     href="ElimiPeli.aspx" target="vista">Eliminar Pelicula</a></li>
                <li><a   href="ModPeli.aspx" target="vista">Modificar Pelicula</a></li>
                <li><a  href="MostraPeli.aspx" target="vista">Mostrar Todas Las Pelicula</a></li>
              </ul>
            </li>
              <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Administrar Usuarios<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a   href="AgreUsu.aspx" target="vista">Agregar Usuario</a></li>
                <li><a  href="ElimiUsu.aspx" target="vista">Eliminar Usuario</a></li>
                <li><a    href="ModUsu.aspx" target="vista">Modificar Usuario</a></li> 
              </ul>
            </li>
          </ul>
           
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <br />
    <br />
    <br />
    <br />
    <div align="center"><iframe  src="Bienve.aspx" name="vista" width="1050" marginwidth="0" height="700" 
           marginheight="0" align="top" scrolling="auto" frameborder="0" ></iframe></div>
</asp:Content>
