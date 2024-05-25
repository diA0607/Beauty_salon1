<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Admin1.aspx.cs" Inherits="ASOIU4.Admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .content-wrapper {
            text-align: center;
            display: flex;
    flex-direction: column;
    align-items: center;
        }
    </style>
    <div class="content-wrapper">
    <br>
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    <br>
    <asp:Label ID="Label2" runat="server" text-align="center" Text="Расписание посещений"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Style="text-align: center" Width="400px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID_посещения" HeaderText="ID_посещения" SortExpression="ID_посещения" />
                <asp:BoundField DataField="Дата" HeaderText="Дата" SortExpression="Дата" />
                <asp:TemplateField HeaderText="ID_клиента" SortExpression="ID_клиента">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("ID_клиента") %>' ID="TextBox1"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="ФИО" DataValueField="ID_клиента" SelectedValue='<%# Bind("ID_клиента") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_клиента], [ФИО] FROM [Клиенты]"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ID_услуги" SortExpression="ID_услуги">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("ID_услуги") %>' ID="TextBox2"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Наименование" DataValueField="ID_услуги" SelectedValue='<%# Bind("ID_услуги") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_услуги], [Наименование] FROM [Услуги]"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ID_статуса" SortExpression="ID_статуса">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("ID_статуса") %>' ID="TextBox3"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="Статус" DataValueField="ID_статуса" SelectedValue='<%# Bind("ID_статуса") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_статуса], [Статус] FROM [Статус]"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ID_сотрудника" SortExpression="ID_сотрудника">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("ID_сотрудника") %>' ID="TextBox4"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="ФИО" DataValueField="ID_сотрудника" SelectedValue='<%# Bind("ID_сотрудника") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_сотрудника], [ФИО] FROM [Сотрудники]"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#808080" Font-Bold="True" ForeColor="White" />
            <SelectedRowStyle BackColor="#DCDCDC" Font-Bold="True" ForeColor="White" />
        </asp:GridView>


        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_посещения], [Дата], [ID_клиента], [ID_услуги], [ID_статуса], [ID_сотрудника] FROM [Посещения] ORDER BY [Дата] DESC"></asp:SqlDataSource>
    </div>
</asp:Content>

