<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vistas.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/bootstrap-theme.css" rel="stylesheet" />
    <link href="Estilos/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
    
.titulo {
	font-family: Georgia;
	font-size: xx-large;
	color: #C60000;
    font-style: italic;

}

        .auto-style1 {
            width: 404px;
            height: 105px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          
          <a class="navbar-brand"  href="RegistroUsua.aspx">Registrarse</a>
            <a class="navbar-brand"   href="RecupeContra.aspx">Recuperar Contraseña</a>
            <a class="navbar-brand"    href="Contacto.aspx" >Contacto</a>
        </div>

      </div>      
    </nav>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    <label class="titulo"> Bienvenido a eCine Company</label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <table align="center" width="600" height="200" border="0">
            <tr bgcolor="#BCBCBC">
                <td>
                    <table align="center" class="auto-style1" border="0">
                        <tr>
                            <td>
                                <label class="tamañoletra">Correo:</label>
                            </td>
                            <td align="left">
                               <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="#990033"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Correo No valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <br />
                        <tr>
                            <td>
                                <label class="tamañoletra">Contraseña:</label>
                            </td>
                            <td align="left">
                                <asp:TextBox runat="server" TextMode="Password" ID="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="*" ForeColor="#660033"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="Button1" runat="server" Text="Ingresar" OnClick="Button1_Click" />
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
