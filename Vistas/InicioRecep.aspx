<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="InicioRecep.aspx.cs" Inherits="Vistas.InicioRecep" %>
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
          <a class="navbar-brand" href="#">eCompany</a>
            <a class="navbar-brand"  href="Login.aspx">Salir</a>
        </div>
      </div>
    </nav>

    <br />
    <br />
    <br />
    <br />
    <div align="center"><iframe   src="Recep.aspx" name="vista" width="1050" marginwidth="0" height="700" 
           marginheight="0" align="top" scrolling="auto" frameborder="0" ></iframe></div>
</asp:Content>
