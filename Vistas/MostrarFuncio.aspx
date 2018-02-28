<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="MostrarFuncio.aspx.cs" Inherits="Vistas.MostrarFuncio" %>
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
        <h1>Mostrar Funciones  </h1>
      </div>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal" Height="202px" AllowPaging="True" PageSize="3" Width="887px" OnPageIndexChanging="GridView1_PageIndexChanging" EmptyDataText="No Hay Funciones">
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
                   <HeaderTemplate> Portada </HeaderTemplate>
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
                 <asp:BoundField DataField="Precio" HeaderText=" Precio " SortExpression="Precio" />
               
            </Columns>
               <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#F1F1F1" />
               <SortedAscendingHeaderStyle BackColor="#808080" />
               <SortedDescendingCellStyle BackColor="#CAC9C9" />
               <SortedDescendingHeaderStyle BackColor="#383838" />
           </asp:GridView>
         </center>
</asp:Content>
