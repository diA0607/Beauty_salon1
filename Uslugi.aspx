<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site2.Master" CodeBehind="Uslugi.aspx.cs" Inherits="ASOIU4.Uslugi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            margin-left: 360px;
        }
        .auto-style12 {
            text-align: center;
        }
        .content-wrapper {
            text-align: center;
            display: flex;
    flex-direction: column;
    align-items: center;
        }
    </style>
</asp:Content>
<asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    
    <div  class="content-wrapper">
        <p>Услуги</p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="698px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style13" ForeColor="Black" GridLines="Vertical"  Height="162px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" DataKeyNames="ID_услуги">

            <Columns>
                <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                <asp:BoundField DataField="ID_услуги" HeaderText="ID_услуги" SortExpression="ID_услуги"></asp:BoundField>
                <asp:BoundField DataField="Наименование" HeaderText="Наименование" SortExpression="Наименование"></asp:BoundField>
                <asp:BoundField DataField="Стоимость" HeaderText="Стоимость" SortExpression="Стоимость"></asp:BoundField>
                <asp:BoundField DataField="Описание_услуги" HeaderText="Описание_услуги" SortExpression="Описание_услуги"></asp:BoundField>
                <asp:TemplateField HeaderText="ID_группы" SortExpression="ID_группы">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("ID_группы") %>' ID="TextBox1"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="Наименование" DataValueField="ID_группы" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" SelectedValue='<%# Bind("ID_группы") %>'>

                            <asp:ListItem Value="0">Не выбрано</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_группы], [Наименование] FROM [Группы_услуг]"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ID_сотрудника" SortExpression="ID_сотрудника">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("ID_сотрудника") %>' ID="TextBox2"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource3" DataTextField="ФИО" DataValueField="ID_сотрудника" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1" SelectedValue='<%# Bind("ID_сотрудника") %>'>

                            <asp:ListItem Value="0">Не выбрано</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_сотрудника], [ФИО] FROM [Сотрудники]"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>

           <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#808080" Font-Bold="True" ForeColor="White" />
            <SelectedRowStyle BackColor="#DCDCDC" Font-Bold="True" ForeColor="White" />
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT * FROM [Услуги]"></asp:SqlDataSource>
      <br>
        <asp:Label ID="Label2" runat="server" Text="Наименование:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="153px"></asp:TextBox>
     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Обновить данные" />
    <br>
    <asp:Label ID="Label1" runat="server" Text="Стоимость:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Width="153px"></asp:TextBox>
     <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Обновить данные" />
    <br>
    <asp:Label ID="Label3" runat="server" Text="Описание услуги:"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Width="153px"></asp:TextBox>
     <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Обновить данные" />

    <br> 
    </div>
    
</asp:Content>
