﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="IniUsuario.aspx.cs" Inherits="Vistas.IniUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/bootstrap-theme.css" rel="stylesheet" />
    <link href="Estilos/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery.js"></script>
    <script src="Scripts/bootstrap.js"></script>

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
          <a class="navbar-brand">eCompany</a>
            <a class="navbar-brand"  href="Login.aspx">Salir</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Ver y Comprar Funciones<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a   href="Compra.aspx" target="vista">Comprar </a></li>   
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
    <div align="center"><iframe   src="BienveUsu.aspx" name="vista" width="1050" marginwidth="0" height="700" 
           marginheight="0" align="top" scrolling="auto" frameborder="0" ></iframe></div>
</asp:Content>
