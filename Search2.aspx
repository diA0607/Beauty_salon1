<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search2.aspx.cs" Inherits="ASOIU4.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        text-align: center;
        width: 100%;
    }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT * FROM [Группы_услуг]"></asp:SqlDataSource>
    <div>
        <asp:Label ID="Label3" runat="server" Text="Выберите услугу:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="Наименование" DataValueField="ID_группы">
        </asp:DropDownList>
    </div>
</p>
<p>
    <asp:Label ID="Label4" runat="server" Text="Выберите сотрудника:"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource7" DataTextField="ФИО" DataValueField="ID_сотрудника">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT * FROM [Сотрудники]"></asp:SqlDataSource>
</p>
<p>
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Фильтр по услуге" />
    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Фильтр по сотруднику" />
    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Фильтр по услуге и по сотруднику" />
    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Сбросить фильтр" />
</p>
<p>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource8" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" Width="400px" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="ID_услуги">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                <asp:BoundField DataField="ID_услуги" HeaderText="ID_услуги" SortExpression="ID_услуги" />
                <asp:BoundField DataField="Наименование" HeaderText="Наименование" SortExpression="Наименование" />
                <asp:BoundField DataField="Стоимость" HeaderText="Стоимость" SortExpression="Стоимость" />
                <asp:BoundField DataField="Описание_услуги" HeaderText="Описание_услуги" SortExpression="Описание_услуги" Visible="false" />
                <asp:BoundField DataField="ID_группы" HeaderText="ID_группы" SortExpression="ID_группы" />
                <asp:BoundField DataField="ID_сотрудника" HeaderText="ID_сотрудника" SortExpression="ID_сотрудника" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#808080" Font-Bold="True" ForeColor="White" />
        <SelectedRowStyle BackColor="#DCDCDC" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <br />
    </div>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT * FROM [Услуги]">
        
    </asp:SqlDataSource>
</p>
<p>
    <div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource9" Height="50px" Width="400px" BackColor="White" BorderStyle="Solid" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" ForeColor="Black">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="ID_услуги" HeaderText="ID_услуги" SortExpression="ID_услуги" />
                <asp:BoundField DataField="Наименование" HeaderText="Наименование" SortExpression="Наименование" />
                <asp:BoundField DataField="Стоимость" HeaderText="Стоимость" SortExpression="Стоимость" />
                <asp:BoundField DataField="Описание_услуги" HeaderText="Описание_услуги" SortExpression="Описание_услуги" />
                <asp:BoundField DataField="ID_группы" HeaderText="ID_группы" SortExpression="ID_группы" />
                <asp:BoundField DataField="ID_сотрудника" HeaderText="ID_сотрудника" SortExpression="ID_сотрудника" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#808080" Font-Bold="True" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
    </asp:DetailsView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT * FROM [Услуги]">
        
    </asp:SqlDataSource>
</p>
<p>
    <asp:Label ID="Label2" runat="server"></asp:Label>
</p>
</asp:Content>
