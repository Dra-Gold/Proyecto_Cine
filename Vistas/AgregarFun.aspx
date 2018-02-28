<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="AgregarFun.aspx.cs" Inherits="Vistas.AgregarFun" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/bootstrap-theme.css" rel="stylesheet" />
    <link href="Estilos/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 192px;
        }
        .auto-style2 {
            width: 351px;
            height: 366px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div class="page-header">
        <h1>Agregar Funcion </h1>
      </div>
    <table border="0" cellpadding="5" cellspacing="5" class="auto-style2" >
        <tr>
    <td>Nombre&nbsp; Funcion </td>
    <td class="auto-style1">
        <asp:TextBox ID="TextBox4" runat="server" Width="125px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="#990033"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
    <td>Nombre&nbsp; Pelicula </td>
    <td class="auto-style1">
        <asp:ListBox ID="ListBox1" runat="server" Rows="1" DataSourceID="SqlDataSource1" DataTextField="NombreP" DataValueField="IdPelicula"></asp:ListBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ListBox1" ErrorMessage="*" ForeColor="#990033"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
    <td>Nombre Cine </td>
    <td class="auto-style1">
        <asp:ListBox ID="ListBox2" runat="server" Rows="1" DataSourceID="cinee" DataTextField="NombreS" DataValueField="CodigoCine" AutoPostBack="True"></asp:ListBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ListBox2" ErrorMessage="*" ForeColor="#990033"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
    <td>N°Sala </td>
    <td class="auto-style1">
        <asp:ListBox ID="ListBox3" runat="server" Rows="1" DataSourceID="sala" DataTextField="NSala" DataValueField="IdSala"></asp:ListBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ListBox3" ErrorMessage="*" ForeColor="#990033"></asp:RequiredFieldValidator>
      </td>
  </tr>
      <tr>
    <td>Dia</td>
    <td class="auto-style1">
        <input type="date"  runat="server" id="fecha"><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="fecha" ErrorMessage="*" ForeColor="#990033"></asp:RequiredFieldValidator>
          </td>
  </tr>
         <tr>
    <td>Estreno</td>
    <td class="auto-style1">
        <asp:ListBox ID="ListBox4" runat="server" DataSourceID="Estreno" DataTextField="DescripcionE" DataValueField="Id" Rows="1"></asp:ListBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ListBox4" ErrorMessage="*" ForeColor="#990033"></asp:RequiredFieldValidator>
          </td>
  </tr>
  <tr>
    <td>Hora Inicio</td>
    <td class="auto-style1">
        <asp:TextBox ID="TextBox2" runat="server"   Width="60"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="#990033"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Solo Hora" ValidationExpression="^(([0-1]?[0-9])|([2][0-3])):([0-5]?[0-9])(:([0-5]?[0-9]))?$"></asp:RegularExpressionValidator>
      </td>
  </tr>
  <tr>
    <td>Hora Termino</td>
    <td class="auto-style1">
        <asp:TextBox ID="TextBox3" runat="server" Width="60"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="#990033"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Solo Hora" ValidationExpression="^(([0-1]?[0-9])|([2][0-3])):([0-5]?[0-9])(:([0-5]?[0-9]))?$"></asp:RegularExpressionValidator>
      </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center" class="auto-style1">
        <asp:Button ID="Button1" runat="server" Text="Agregar Funcion" OnClick="Button1_Click" />
      </td>
    
  </tr>
</table>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CineVConnectionString %>" SelectCommand="SELECT [IdPelicula], [NombreP] FROM [Pelicula]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Estreno" runat="server" ConnectionString="<%$ ConnectionStrings:CineVConnectionString %>" SelectCommand="SELECT * FROM [Estreno]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="cinee" runat="server" ConnectionString="<%$ ConnectionStrings:CineVConnectionString %>" SelectCommand="SELECT [CodigoCine], [NombreS] FROM [Sucursal]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sala" runat="server" ConnectionString="<%$ ConnectionStrings:CineVConnectionString %>" SelectCommand="SELECT * FROM [Sala] WHERE ([Sucur] = @Sucur)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ListBox2" DefaultValue="" Name="Sucur" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </center>
</asp:Content>
