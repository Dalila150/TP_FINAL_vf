﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCrearCategoria.aspx.cs" Inherits="Vistas.AdminCrearCategoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" ; href="/css/home.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/footer.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css//headerAdmin.css" ; type="text/css" />

    <title>Home</title>
    <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    --------------------------------------------

<header>
        <div class="EspacioLogo">
            <img src="/img/logo.jpg" ; class="Logo" />
        </div>


        <div class="EspacioAtajos" style="padding-top: 50px;">
            <a href="/home.html" class="fa fa-sign-out"
                style="text-decoration: none; font-size: 30px;color: black;"></a>
        </div>
        <div class="EspacioBarraNavegacion" style="padding-top: 35px;">
            <ul class="nav">
                <li class="name">
                    <a href="/AdminHome.aspx">Home</a>
                </li>
                <li class="name">
                    <a href="/AdminHome.aspx">Administracion</a>
                    <ul>
                        <li>
                            <a href="/AdminListPro.aspx">Productos</a>
                        </li>
                        <li>
                            <a href="/AdminListUsu.aspx">Usuarios</a>
                        </li>
                        <li>
                            <a href="/AdminCrearCategoria.aspx">Categorias</a>
                        </li>
                        <li>
                            <a href="/AdminCrearMarca.aspx">Marcas</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>

    </header>

    <!------------------------------------------------------------>
    <div style="display: inline-block;width: 80%;padding-top: 100px;padding-left: 10%">
        <div style="    background-color: rgba(197, 93, 102, 0.404);
       padding-left: 15%;padding-right: 15%;border-radius: 8px;">
            <h1 style="padding-top: 20px;">Crear categoria</h1>
            <div style="padding-top: 5%;padding-left: 25%;padding-bottom: 5%; border-top: 1px solid rgb(218, 50, 50);border-bottom: 1px solid rgb(218, 50, 50);">
                <table style="width: 100%">
                    <tbody>
                        
                            <tr>
                                <td style="width: 15%; font-size: 19px">
                                    <h3 style="display: inline;">Nombre categoria</h3>
                                </td>
                                <td style="width: 25%;">
                                <asp:TextBox Style="border-radius: 10px; font-size: 19px; border: 0px solid" ID="txtCategoria" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                                </td>
                            </tr>
                        

                    </tbody>
                </table>
            </div>
            <div style="padding-bottom: 25px; text-align:center; margin-top:3%; height: 35px;">
                <asp:Button ID="BtnCrearCate" style="height: 40px; width: 143px;  background-color: rgba(14, 118, 85, 0.7); font-weight: bolder;border: 0px solid;color: white;border-radius: 10px" runat="server" Height="40px" OnClick="BtnCrearCate_Click" Text="CREAR CATEGORIA" Width="143px" />
                <div style="width: 50px;display: inline-block"></div>
                <asp:Button ID="BtnCancelar" Style="border-radius: 10px;background-color: rgba(148, 34, 34,0.8); font-weight: bolder;color: white;border: 0px solid" runat="server" Height="40px" OnClick="BtnCancelar_Click" Text="CANCELAR" Width="143px" />
            &nbsp;</div>
        </div>
    </div>
    
   
    </form>
</body>
    <script type="text/javascript">
        $(".encontrar-id-usuario").click(function () {
            var $id = $(this).closest("tr")//BUSCO EL TR MAS CERCANO QUE ES SOBRE EL QUE SE HIZO CLICK
                .find(".info-user")//BUSCO EL ITEM QUE TENGA ESA CLASE
                .text();//AGARRO EL TEXTO DEL TD

            alert($id);// Outputs the answer
        });
    </script>
</html>