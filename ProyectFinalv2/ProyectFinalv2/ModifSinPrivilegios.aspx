<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifSinPrivilegios.aspx.cs" Inherits="ProyectFinalv2.ModifSinPrivilegios" %>

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
      <ul>
  <li>

  </li>
          <li>

  </li>
          <li>

  </li>
          <li>
      <label for="name2">Codigo Usuario:</label>&nbsp;
      <asp:TextBox ID="tcodUsua" runat="server"></asp:TextBox>

  </li>
          <li>
    <label for="name">Nombre:</label>&nbsp;
      <asp:TextBox ID="tnombre" runat="server"></asp:TextBox>

  </li>
  <li>
    <label for="mail">Correo electrónico:</label>
   
      <asp:TextBox ID="tcorreo" runat="server"></asp:TextBox>

  </li>
  <li>
    <label for="msg">Clave:</label>
      <asp:TextBox ID="tclave" runat="server"></asp:TextBox>


  </li>
     <li>
         <label for="tip">Tipo:</Label>&nbsp;
         <asp:DropDownList ID="dtipo" runat="server">
             <asp:ListItem Value="Regular">Regular</asp:ListItem>
             <asp:ListItem Value="Admin">Administrador</asp:ListItem>
         </asp:DropDownList>
       
         </li>
 </ul>


 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


 
                    <asp:Button ID="bModUsar" class="button" runat="server" Text="Modificar" Height="50px" Width="263px" OnClick="bModUsar_Click"  />





    </form>
</body>
</html>
