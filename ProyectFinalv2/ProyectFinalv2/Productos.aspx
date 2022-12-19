<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="ProyectFinalv2.Productos" %>

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
        <div style="width: 663px">

<ul>
  <li>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar.">
          <Columns>
              <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
              <asp:BoundField DataField="Nom_Produc" HeaderText="Nom_Produc" SortExpression="Nom_Produc" />
              <asp:BoundField DataField="segmento" HeaderText="segmento" SortExpression="segmento" />
              <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
              <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
              <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
          </Columns>
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prueba %>" ProviderName="<%$ ConnectionStrings:Prueba.ProviderName %>" SelectCommand="SELECT [id], [Nom_Produc], [segmento], [Categoria], [Tipo], [Precio] FROM [Mae_Productos]"></asp:SqlDataSource>




  </li>
    <li>




  </li>
    <li>




  </li>
    <li>




  </li>
    <li>




        <asp:DropDownList ID="DDownProd" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nom_Produc" DataValueField="id">
        </asp:DropDownList>




  </li>
    <li>
    <label for="name">Nombre:</label>&nbsp;
      <asp:TextBox ID="tnombreProd" runat="server"></asp:TextBox>




  </li>
  <li>
    <label for="Nprod">Categoria:</label>
   
      <asp:TextBox ID="tcategoria" runat="server"></asp:TextBox>

  </li>
  <li>
    <label for="msg2">Segmento:</label>
      <asp:TextBox ID="tSegmento" runat="server"></asp:TextBox>


  </li>

    <li>
    <label for="msg3">Precio:</label>
      <asp:TextBox ID="tprecio" runat="server"></asp:TextBox>


  </li>





     <li>
         <label for="tip">Tipo:</label>
         <asp:DropDownList ID="dtipo" runat="server">
             <asp:ListItem Value="Exento">Exento</asp:ListItem>
             <asp:ListItem Value="Gravado">Gravado</asp:ListItem>
         </asp:DropDownList>
       
         </li>
 </ul>


 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


 
                    <asp:Button ID="bregistrar2" class="button" runat="server" Text="REGISTRAR" Height="50px" Width="263px" OnClick="bregistrar2_Click"  />
                    <br />
                    <asp:Button ID="bborrar2" class="button" runat="server" Text="BORRAR" Height="50px" Width="263px" OnClick="bborrar2_Click"  />
                    <br />
                    <asp:Button ID="bactualizar2" class="button" runat="server" Text="ACTUALIZAR" Height="50px" Width="263px" OnClick="bactualizar2_Click" />
                    <br />
                    <asp:Button ID="bconsultar2" class="button" runat="server" Text="CONSULTAR" Height="50px" Width="263px" />
                    
                     <br />
                    <asp:Button ID="Regresar2" class="button" runat="server" Text="Regresar" Height="50px" Width="272px" OnClick="Regresar2_Click"  />













        </div>
    </form>
</body>
</html>
