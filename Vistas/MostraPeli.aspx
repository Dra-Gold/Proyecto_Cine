<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="MostraPeli.aspx.cs" Inherits="Vistas.MostraPeli" %>
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
        <h1>Mostrar Peliculas</h1>
      </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="200px" AllowPaging="True" PageSize="3" Width="842px" OnPageIndexChanging="GridView1_PageIndexChanging" EmptyDataText="No Hay Peliculas">
               <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
               <FooterStyle BackColor="#CCCCCC" />
               <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
               <RowStyle HorizontalAlign="Center" />
               <AlternatingRowStyle BackColor="#CCCCCC" />
            <EmptyDataRowStyle HorizontalAlign="Center" />
             <Columns>
                <asp:BoundField DataField="NombreP" HeaderText=" Nombre " SortExpression="NombreP" />
                <asp:BoundField DataField="DescripcionG" HeaderText="Genero " SortExpression="Descripcion" />   
                <asp:BoundField DataField="DescripcionI" HeaderText="Idioma " SortExpression="Descripcion"  />
                <asp:BoundField DataField="Director" HeaderText=" Director " SortExpression="Director" />
                <asp:BoundField DataField="Sinopsis" HeaderText=" Sinopsis " SortExpression="Sinopsis" />
                <asp:TemplateField>
            <HeaderTemplate> Portada </HeaderTemplate>
            <ItemTemplate>
                &nbsp;<img src='data:image/jpg;base64,<%# Eval("Imagen") != System.DBNull.Value ? Convert.ToBase64String((byte[])Eval("Imagen")) : string.Empty %>' alt="image" height="100" width="100"/>
            </ItemTemplate>
        </asp:TemplateField> 
            </Columns>
               <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#F1F1F1" />
               <SortedAscendingHeaderStyle BackColor="#808080" />
               <SortedDescendingCellStyle BackColor="#CAC9C9" />
               <SortedDescendingHeaderStyle BackColor="#383838" />
           </asp:GridView>
        <asp:DataList ID="DataList1" runat="server" HorizontalAlign="Center" CellSpacing="-1" Height="82px" RepeatColumns="5" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" >
            <AlternatingItemStyle HorizontalAlign="Center" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"/>
            <ItemStyle Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Navy" HorizontalAlign="Center" Wrap="False" />
            <ItemTemplate>
                &nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("NombreP") %>'></asp:Label><br />
                &nbsp;<img src='data:image/jpg;base64,<%# Eval("Imagen") != System.DBNull.Value ? Convert.ToBase64String((byte[])Eval("Imagen")) : string.Empty %>' alt="image" height="100" width="100"/>
               
                <br />
                <asp:Label ID="Label2" runat="server" Text="Genero"></asp:Label>
                &nbsp;:<asp:Label ID="Label4" runat="server" Text='<%# Eval("DescripcionG") %>'></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Idioma"></asp:Label>
                &nbsp; :<asp:Label ID="Label5" runat="server" Text='<%# Eval("DescripcionI") %>'></asp:Label>
                <br />
               
            </ItemTemplate>
            
        </asp:DataList>
       </center>
</asp:Content>
