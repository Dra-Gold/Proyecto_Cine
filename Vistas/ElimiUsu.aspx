﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="ElimiUsu.aspx.cs" Inherits="Vistas.ElimiUsu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Estilos/bootstrap-theme.css" rel="stylesheet" />
    <link href="Estilos/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        th
    {
        text-align:center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div class="page-header">
        <h1>Eliminar Usuario<asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            </h1>
      </div>

          <asp:UpdatePanel ID="UpdatePanel" runat="server">
                  <ContentTemplate><table width="324" height="86" border="0" cellpadding="5" cellspacing="5">
  <tr>
    <td width="133" class="auto-style1">Correo Usuario</td>
    <td width="150" class="auto-style1">
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Correo" DataValueField="Id" Rows="1" AutoPostBack="True"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CineVConnectionString %>" SelectCommand="SELECT * FROM [Usuario]"></asp:SqlDataSource>
      </td>
  </tr>
            </table>
              
<table width="324" border="0" cellpadding="5" cellspacing="5" class="auto-style5">
   <tr>
    <td width="133">
           <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Mostrar" />
       </td>
    <td class="auto-style4">
        <asp:Button ID="Button1" runat="server" Text="Eliminar Usuario" OnClick="Button1_Click" />
       </td>
  </tr>
</table> 
        <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="108px" Width="472px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <EmptyDataRowStyle HorizontalAlign="Center" />
            <RowStyle HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="Correo" HeaderText=" Correo " SortExpression="Correo" />
                <asp:BoundField DataField="Contraseña" HeaderText="Contraseña " SortExpression="Contraseña" />   
                <asp:BoundField DataField="Nombre" HeaderText="Nombre " SortExpression="Nombre"  />
                <asp:BoundField DataField="DescripcionT" HeaderText="Rango " SortExpression="DescripcionT"  />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView></ContentTemplate>
           </asp:UpdatePanel>
        </center>
</asp:Content>
