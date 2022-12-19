<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loguin.aspx.cs" Inherits="ProyectFinalv2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Styles.css" rel="stylesheet" />
    <title></title>
</head>
<body>

    <h2>Login Form</h2>

    <form id="form1" runat="server">
  <div class="imgcontainer">
    <img src="avatar2.jpg"  alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>

      <asp:TextBox ID="tnombre" placeholder="ingrese su correo" name="uname" required runat="server"></asp:TextBox>

    <label for="psw"><b>Password</b></label>
    
      <asp:TextBox ID="tclave"  placeholder="Ingrese su contraseña" name="psw" required runat="server"></asp:TextBox>
        


      <asp:Button ID="bingresar"  type="submit" class="cancelbtn2" runat="server" Text="Ingresar" OnClick="bingresar_Click" />


  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">¿Primera vez que ingresa? <a href="Registro.aspx">Crear Usuario?</a></span>
  </div>
    </form>




</body>
</html>
