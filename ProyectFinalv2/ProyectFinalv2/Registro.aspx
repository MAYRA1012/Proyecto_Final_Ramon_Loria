<%@ Page Title="" Language="C#" MasterPageFile="~/principal.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectFinalv2.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


 <ul>
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


 
                    <asp:Button ID="bregistrar" class="button" runat="server" Text="REGISTRAR" Height="50px" Width="263px" OnClick="bregistrar_Click" />






</asp:Content>
