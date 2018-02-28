<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="BienveUsu.aspx.cs" Inherits="Vistas.BienveUsu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Estilos/bootstrap-theme.css" rel="stylesheet" />
    <link href="Estilos/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container theme-showcase" role="main">

      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>Bienvenido Usuario 
            <asp:Label ID="Label1" runat="server"></asp:Label>
          </h1>
        <p>&nbsp;</p>
      </div>
         </div>
</asp:Content>
