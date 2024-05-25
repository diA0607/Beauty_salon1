<%@ Page Language="C#"  MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Lk.aspx.cs" Inherits="ASOIU4.Lk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            width: 732px;
        }
        .auto-style16 {
            width: 356px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style1">
        <tr>
            <td colspan="2">Регистрация</td>
        </tr>
        <tr>
            <td class="auto-style16">Ваше ФИО:</td>
            <td><asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style16">Ваш Телефон:</td>
            <td><asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style16">Дата рождения:</td>
            <td><asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style16">Пол:</td>
            <td><asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style16">Логин:</td>
            <td><asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style16">Пароль:</td>
            <td><asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox6_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2"><asp:Button ID="Button4" runat="server" Text="Регистрация" OnClick="Button4_Click" /></td>
        </tr>
    </table>

</asp:Content>
