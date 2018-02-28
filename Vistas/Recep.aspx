<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="Recep.aspx.cs" Inherits="Vistas.Recep" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/bootstrap-theme.css" rel="stylesheet" />
    <link href="Estilos/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 151px;
        }
        .auto-style2 {
            width: 316px;
        }
        .auto-style3 {
            width: 462px;
            height: 86px;
        }
        th
    {
        text-align:center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
        <div class="page-header">
        <h1>Buscar Boleto</h1>
      </div>
        <table border="0" cellpadding="5" cellspacing="5" class="auto-style3">
  <tr>
    <td width="133" class="auto-style1">Codigo Boleto</td>
    <td class="auto-style2">
        <asp:TextBox ID="TextBox1" runat="server" MaxLength="25" Width="260px" ></asp:TextBox>
      </td>
  </tr>
            </table>
              
<table width="324" border="0" cellpadding="5" cellspacing="5" class="auto-style5">
   <tr>
    <td width="133" align="center">
           <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Mostrar" />
       </td>
    
  </tr>
</table>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="200px" PageSize="1" Width="898px">
               <FooterStyle BackColor="#CCCCCC" />
               <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
               <RowStyle HorizontalAlign="Center" />
               <AlternatingRowStyle BackColor="#CCCCCC" />
               <EmptyDataRowStyle HorizontalAlign="Center" />
             <Columns>
                <asp:BoundField DataField="NombreF" HeaderText=" Nombre Funcion" SortExpression="NombreF" />
                <asp:BoundField DataField="NombreP" HeaderText="Nombre De Pelicula " SortExpression="NombreP" />   
                  <asp:TemplateField>
                   <HeaderTemplate> Imagen </HeaderTemplate>
                    <ItemTemplate>
                    &nbsp;<img src='data:image/jpg;base64,<%# Eval("Imagen") != System.DBNull.Value ? Convert.ToBase64String((byte[])Eval("Imagen")) : string.Empty %>' alt="image" height="100" width="100"/>
                   </ItemTemplate>
                  </asp:TemplateField> 
                <asp:BoundField DataField="DescripcionE" HeaderText="Tipo Pelicula " SortExpression="DescripcionE"  />
                 <asp:BoundField DataField="Dia" HeaderText=" Dia " SortExpression="Dia" />
                <asp:BoundField DataField="NombreS" HeaderText=" Cine  " SortExpression="NombreS" />
                <asp:BoundField DataField="NSala" HeaderText=" N°Sala " SortExpression="NSala" />
                  <asp:BoundField DataField="HoraI" HeaderText=" Hora Inicio " SortExpression="HoraI" />
                  <asp:BoundField DataField="HoraT" HeaderText=" Hora Termino " SortExpression="HoraT" />
               
            </Columns>
               <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#F1F1F1" />
               <SortedAscendingHeaderStyle BackColor="#808080" />
               <SortedDescendingCellStyle BackColor="#CAC9C9" />
               <SortedDescendingHeaderStyle BackColor="#383838" />
           </asp:GridView>
        </center>
</asp:Content>
