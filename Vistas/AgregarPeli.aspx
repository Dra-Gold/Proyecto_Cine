<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="AgregarPeli.aspx.cs" Inherits="Vistas.AgregarPeli" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery.js"></script>
    <script src="Scripts/Mostrar.js"></script>
    <link href="Estilos/bootstrap-theme.css" rel="stylesheet" />
    <link href="Estilos/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 220px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div class="page-header">
        <h1>Agregar Pelicula </h1>
      </div>
        <table width="450" height="436" border="0" cellpadding="5" cellspacing="5">
  <tr>
    <td>Nombre</td>
    <td class="auto-style1" >
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="#990033"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
    <td>Genero</td>
    <td class="auto-style1">
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="Genero" DataTextField="DescripcionG" DataValueField="Id" Rows="1"></asp:ListBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ListBox1" ErrorMessage="*" ForeColor="#990033"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
    <td>Idioma</td>
    <td class="auto-style1">
        <asp:ListBox ID="ListBox2" runat="server" DataSourceID="Idioma" DataTextField="DescripcionI" DataValueField="Id" Rows="1"></asp:ListBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ListBox2" ErrorMessage="*" ForeColor="#990033"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
    <td>Director</td>
    <td class="auto-style1">
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="#990033"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
    <td>Sinopsis</td>
    <td class="auto-style1">
        <textarea id="TextArea1" cols="20" name="S1" rows="2" runat="server"></textarea><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextArea1" ErrorMessage="*" ForeColor="#990033"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
    <td height="71" valign="top">Imagen</td>
    <td class="auto-style1">
        <asp:Image ID="Image1" runat="server" Height="107px" Width="104px"  class="img-thumbnail" />
        
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" onchange="showimagepreview(this)" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Seleccione una imagen" ForeColor="#990033"></asp:RequiredFieldValidator>
      </td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td class="auto-style1">
        <asp:Button ID="Button1" runat="server" Text="Agregar Pelicula" OnClick="Button1_Click" style="height: 26px" />
      </td>
  </tr>
</table>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:SqlDataSource ID="Genero" runat="server" ConnectionString="<%$ ConnectionStrings:CineVConnectionString %>" SelectCommand="SELECT * FROM [Gene]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Idioma" runat="server" ConnectionString="<%$ ConnectionStrings:CineVConnectionString %>" SelectCommand="SELECT * FROM [Idioma]"></asp:SqlDataSource>
    </center>
     
</asp:Content>
