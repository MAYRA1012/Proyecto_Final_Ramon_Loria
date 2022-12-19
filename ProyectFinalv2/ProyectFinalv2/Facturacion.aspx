<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Facturacion.aspx.cs" Inherits="ProyectFinalv2.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Styleprincipal.css" rel="stylesheet" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;" border="2">
                <tr>
                    <td class="label"> Codigo </td>
                    <td class="auto-style2"><strong class="label">Producto</strong></td>
                    <td class="auto-style2"><strong class="label">Cantidad</strong></td>
                    <td class="auto-style2"><strong class="label">Precio</strong></td>
                </tr>

                <tr>
                    <td class=".label">
                        &nbsp;&nbsp;
                        <strong>
                        <asp:DropDownList ID="tcodigod" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nom_Produc" DataValueField="id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UHDBConnectionString3 %>" SelectCommand="SELECT * FROM [Mae_Productos]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UHDBConnectionString2 %>" SelectCommand="SELECT * FROM [Mae_usuario]"></asp:SqlDataSource>
                        </strong>
                        </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tnombre" runat="server" Width="216px" Enabled="False"></asp:TextBox></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tcantidad" runat="server" TextMode="Number" Height="33px" style="margin-right: 0px"></asp:TextBox></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tprecio" runat="server" Enabled="False"></asp:TextBox></td>
                </tr>


                 <tr>
                    <td class="label">Codigo cliente</td>
                    <td class="auto-style2"><strong class="label">Nombre Cliente</strong></td>
                    <td class="auto-style2"><strong class="label">Fecha</strong></td>
                    <td class="auto-style2"><strong class="label">Numero factura</strong></td>
                </tr>
                 <tr>
                    <td class="auto-style4">
                        &nbsp;&nbsp;
                        <strong class="label">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="id">
                        </asp:DropDownList>
                        </strong>
                        </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tnombrecliente" runat="server" Width="216px" Enabled="False"></asp:TextBox></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tfecha" runat="server" type="date" value="2022-12-18" min="2022-01-01" Max="2099-12-31" Height="28px" Width="131px"></asp:TextBox></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tnumerofactura" runat="server" Enabled="False"></asp:TextBox></td>
                </tr>

               
                
                
            </table>
        </div>
        
        <asp:Button ID="Button1" CssClass="button button2" runat="server" Text="INGRESAR" OnClick="Button1_Click" />
        <br />
        <br />
        <div> 
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None"
                AllowPaging="True" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                PageSize="7" CellPadding="4" ForeColor="#333333" >
<AlternatingRowStyle CssClass="alt" BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" />
                    <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />

<PagerStyle CssClass="pgr" BackColor="#284775" ForeColor="White" HorizontalAlign="Center"></PagerStyle>
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>

        <div>
            <table style="width: 100%;" border="1">
                <tr>
                    <td class="auto-style1"><strong class="label">SUBTOTAL</strong></td>
                    <td class="auto-style1"><strong class="label">IVA</strong></td>
                    <td class="auto-style1"><strong class="label">TOTAL</strong></td>
                </tr>
                <tr>
                    <td class="label">
                        <asp:Label ID="LSB" runat="server" Font-Size="Large" Text="0"></asp:Label>
                    </td>
                    <td class="label">
                        <asp:Label ID="LIVA" runat="server" Font-Size="Large" Text="0"></asp:Label>
                    </td>
                    <td class="label">
                        <asp:Label ID="LTOTAL" runat="server" Font-Size="Large" Text="0"></asp:Label>
                    </td>
                    
                </tr>
                
            </table>
        </div>

         <asp:Button ID="Bfacturar" CssClass="button button3" runat="server" Text="FACTURAR" OnClick="Bfacturar_Click" />
   





    </form>
</body>
</html>
