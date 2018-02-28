<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="RegistroUsua.aspx.cs" Inherits="Vistas.RegistroUsua" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/bootstrap-theme.css" rel="stylesheet" />
    <link href="Estilos/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 536px;
            height: 382px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" >eCompany</a>
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
        <h1>Registro Usuario </h1>
      </div>
   <table border="0" cellpadding="5" cellspacing="5" class="auto-style1">
    <tr>
      <td width="53">&nbsp;</td>
      <td colspan="3">Nombre</td>
      <td colspan="3">
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="#660033"></asp:RequiredFieldValidator>
        </td>
      <td width="8">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td colspan="3">Contraseña</td>
      <td colspan="3"><asp:TextBox runat="server" TextMode="Password" ID="Password"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="*" ForeColor="#660033"></asp:RequiredFieldValidator>
        </td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td colspan="3">Correo</td>
      <td colspan="3">
          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="#660033"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Correo  No Valido" ForeColor="#003399" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td width="62">&nbsp;</td>
      <td width="41">&nbsp;</td>
      <td colspan="2">
          <asp:Button ID="Button1" runat="server" Text="Crear Usuario" OnClick="Button1_Click" />
        </td>
      <td width="39">&nbsp;</td>
      <td width="68">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td width="34" colspan="2" align="center" >
          <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
      <td width="41">&nbsp;</td>
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
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</div>
</asp:Content>
