<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="Vistas.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/bootstrap-theme.css" rel="stylesheet" />
    <link href="Estilos/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            margin-right: 153;
            margin-top: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">eCompany</a>
            <a class="navbar-brand"  href="Login.aspx">Volver Menu Principal</a>
        </div>
      </div>
    </nav>

    <br />
    <br />
    <br />
    <br />
    <center>
<div  class="fondo" >
    <div class="page-header">
        <h1>Contacto </h1>
      </div>
  <table width="465" height="352" border="0" cellpadding="5" cellspacing="5">
  <tr>
    <td colspan="2">Asunto</td>
    <td colspan="2">
        <asp:ListBox ID="ListBox1" runat="server" Rows="1">
            <asp:ListItem>Felicitacion</asp:ListItem>
            <asp:ListItem>Error en la Pagina</asp:ListItem>
            <asp:ListItem>Otros</asp:ListItem>
            <asp:ListItem>Ayuda</asp:ListItem>
        </asp:ListBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ListBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
      </td>
    <td width="53">&nbsp;</td>
  </tr>
  <tr>
    <td width="74">&nbsp;</td>
    <td width="72">&nbsp;</td>
    <td width="121">&nbsp;</td>
    <td width="53">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">Mensaje</td>
    <td colspan="2" rowspan="3">
        <textarea id="TextArea1" class="auto-style2" cols="20" name="S1" rows="5" runat="server"></textarea><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextArea1"></asp:RequiredFieldValidator>
      </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="2">
        <asp:Button ID="Button1" runat="server" Text="Enviar Mensaje" OnClick="Button1_Click" />
      </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>
        <asp:Label ID="Label1" runat="server"></asp:Label>
      </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</div>
</asp:Content>
