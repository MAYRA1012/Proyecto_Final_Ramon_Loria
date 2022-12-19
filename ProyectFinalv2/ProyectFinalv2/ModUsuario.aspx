<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModUsuario.aspx.cs" Inherits="ProyectFinalv2.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">



<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Styleprincipal.css" rel="stylesheet" />
    <link href="StyleFormulario.css" rel="stylesheet" />



    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

<ul>
  <li>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
              <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
              <asp:BoundField DataField="clave" HeaderText="clave" SortExpression="clave" />
              <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
              <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
          </Columns>
          <EditRowStyle BackColor="#2461BF" />
          <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#EFF3FB" />
          <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#F5F7FB" />
          <SortedAscendingHeaderStyle BackColor="#6D95E1" />
          <SortedDescendingCellStyle BackColor="#E9EBEF" />
          <SortedDescendingHeaderStyle BackColor="#4870BE" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prueba %>" ProviderName="<%$ ConnectionStrings:Prueba.ProviderName %>" SelectCommand="SELECT [id], [correo], [clave], [Nombre], [Tipo] FROM [Mae_usuario]"></asp:SqlDataSource>




  </li>
    <li>




  </li>
    <li>




  </li>
    <li>




  </li>
    <li>




  </li>
    <li>




  </li>
    <li>
      <asp:DropDownList ID="dusuarioID" runat="server" DataSourceID="usuariosDROPD" DataTextField="Nombre" DataValueField="id">
      </asp:DropDownList>
      <asp:SqlDataSource ID="usuariosDROPD" runat="server" ConnectionString="<%$ ConnectionStrings:UHDBConnectionString %>" SelectCommand="SELECT * FROM [Mae_usuario]"></asp:SqlDataSource>




  </li>
    <li>




  </li>
    <li>

 </li>
    <li>
        
        <label for="Nombre">
        Nombre:</label>
        &nbsp;<asp:TextBox ID="tnombre" runat="server"></asp:TextBox>
    </li>
    <li>
        <label for="mail">
        Correo electrónico:</label>
        <asp:TextBox ID="tcorreo" runat="server"></asp:TextBox>
    </li>
    <li>
        <label for="msg">
        Clave:</label>
        <asp:TextBox ID="tclave" runat="server"></asp:TextBox>
    </li>
    <li>
        <label for="tip">
        Tipo:</Label>&nbsp;
         <asp:DropDownList ID="dtipo" runat="server">
             <asp:ListItem Value="Regular">Regular</asp:ListItem>
             <asp:ListItem Value="Admin">Administrador</asp:ListItem>
        </asp:DropDownList>
    </li>
 </ul>


 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


 
                    <asp:Button ID="bmodificar" class="button" runat="server" Text="MODIFICAR" Height="50px" Width="272px" OnClick="bmodificar_Click" />
                    <br />
             <asp:Button ID="bborrar" class="button" runat="server" Text="BORRAR" Height="50px" Width="272px" OnClick="bborrar_Click"/>
                   <br />
                    <asp:Button ID="Regresar" class="button" runat="server" Text="Regresar" Height="50px" Width="272px" OnClick="Regresar_Click" />









        </div>
    </form>
</body>
</html>
