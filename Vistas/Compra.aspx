<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="Compra.aspx.cs" Inherits="Vistas.Compra" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/bootstrap-theme.css" rel="stylesheet" />
    <link href="Estilos/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery.js"></script>
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
        <h1>Comprar Boleto<asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            </h1>
      </div>
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
             <ContentTemplate>

            
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" DataKeyNames="Codigo" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal" Height="115px" AllowPaging="True" PageSize="3" Width="1030px" OnPageIndexChanging="GridView1_PageIndexChanging" EmptyDataText="No Hay Funciones" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" OnLoad="GridView1_Load">
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
                 
               
                 <asp:ButtonField ButtonType="Button" Text="Comprar Boleto"  CommandName="AgregarCarrito"   />
                 
               
            </Columns>
               <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#F1F1F1" />
               <SortedAscendingHeaderStyle BackColor="#808080" />
               <SortedDescendingCellStyle BackColor="#CAC9C9" />
               <SortedDescendingHeaderStyle BackColor="#383838" />
           </asp:GridView>
        <br />
        <h2 class="sub-header">Carrito de Compras</h2>
        <br />

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Nsc" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="115px" Width="668px" EmptyDataText="Carrito Vacio" OnRowCommand="GridView2_RowCommand" >
            <RowStyle HorizontalAlign="Center" />
            <EmptyDataRowStyle HorizontalAlign="Center" />
             <Columns>
                 <asp:BoundField DataField="NBoleto" HeaderText=" Boleto" SortExpression="NBoleto" />
                 <asp:BoundField DataField="NombreF" HeaderText=" Nombre Funcion" SortExpression="NombreF" />
                 <asp:BoundField  DataField="Dia" HeaderText="Dia " SortExpression="Dia"/>
                 <asp:BoundField  DataField="NombreS" HeaderText="Sucursal" SortExpression="NombreS"/>
                 <asp:BoundField  DataField="NSala" HeaderText="N°Sala " SortExpression="NSala"/>
                 <asp:BoundField  DataField="Precio" HeaderText="Precio Entrada" SortExpression="Precio"/>
                 <asp:ButtonField Text="Eliminar" ButtonType="Button"  CommandName="Eliminar"   />
             </Columns>
             <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
             <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
             <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F7F7F7" />
             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
             <SortedDescendingCellStyle BackColor="#E5E5E5" />
             <SortedDescendingHeaderStyle BackColor="#242121" />

        </asp:GridView>
                 <br />
                 <asp:Label ID="Label3" runat="server" Text="Total Carrito ="></asp:Label>&nbsp;
                 <asp:Label ID="Label2" runat="server" Text=" ???"></asp:Label>
                 <br />
                 <asp:Label ID="Label1" runat="server"></asp:Label>
                 <br />
                 <br />
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Comprar" />
                 <br />
        <br />
                  </ContentTemplate>
        </asp:UpdatePanel>
</center>
</asp:Content>
