<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="ASOIU4.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        height: 26px;
    }
   
    .auto-style10 {
        height: 26px;
        width: 584px;
        text-align: right;
    }
    .auto-style11 {
        text-align: left;
    }
        .auto-style12 {
            height: 26px;
            text-align: left;
        }
        .auto-style13 {
            height: 26px;
            width: 502px;
            text-align: left;
            color: #2F4F4F;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table class="auto-style1">
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label2" runat="server" Text="Введите наименование услуги:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label3" runat="server" Text="Введите стоимость:"></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td class="auto-style13">
            <asp:Label ID="Label1" runat="server" Text="Введите описание услуги:"></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label4" runat="server" Text="Выберите группу услуги:"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Наименование" DataValueField="ID_группы" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>

            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT * FROM [Группы_услуг]" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
        </td>
    </tr>
        <tr>
        <td class="auto-style13">
            <asp:Label ID="Label5" runat="server" Text="Выберите сотрудника услуги:"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="ФИО" DataValueField="ID_сотрудника" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>

            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_сотрудника], [ФИО] FROM [Сотрудники]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style11" colspan="2">
           
            <asp:Button ID="Button1" runat="server" Text="Создать" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
       
</asp:Content>
