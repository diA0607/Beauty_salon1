<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search1.aspx.cs" Inherits="ASOIU4.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label2" runat="server" Text="Выберите услугу"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" AppendDataBoundItems="true" DataSourceID="SqlDataSource2" DataTextField="Наименование" DataValueField="ID_группы" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">

        <asp:ListItem Selected="True" Value="0">Не выбрано</asp:ListItem>
    </asp:DropDownList>

    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT * FROM [Группы_услуг]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Width="400px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="ID_услуги">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True"></asp:CommandField>
            <asp:BoundField DataField="ID_услуги" HeaderText="ID_услуги" SortExpression="ID_услуги" Visible="false"/>
            <asp:BoundField DataField="Наименование" HeaderText="Наименование" SortExpression="Наименование" />
            <asp:BoundField DataField="Стоимость" HeaderText="Стоимость" SortExpression="Стоимость" />
            <asp:BoundField DataField="Описание_услуги" HeaderText="Описание_услуги" SortExpression="Описание_услуги" Visible="false" />
            <asp:BoundField DataField="ID_группы" HeaderText="ID_группы" SortExpression="ID_группы" Visible="false" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#808080" Font-Bold="True" ForeColor="White" />
        <SelectedRowStyle BackColor="#DCDCDC" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' OnSelecting="SqlDataSource4_Selecting" SelectCommand="SELECT * FROM [Услуги] WHERE ([ID_группы] = @ID_группы)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="ID_группы" SessionField="IDT" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource5" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="400px" BackColor="White" BorderColor="#000000" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Both">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="ID_услуги" HeaderText="ID_услуги" SortExpression="ID_услуги" Visible="false" />
            <asp:BoundField DataField="Наименование" HeaderText="Наименование" SortExpression="Наименование" />
            <asp:BoundField DataField="Стоимость" HeaderText="Стоимость" SortExpression="Стоимость" />
            <asp:BoundField DataField="Описание_услуги" HeaderText="Описание_услуги" SortExpression="Описание_услуги" />
            <asp:BoundField DataField="ID_группы" HeaderText="ID_группы" SortExpression="ID_группы" Visible="false"/>
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#808080" Font-Bold="True" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' OnSelecting="SqlDataSource5_Selecting" SelectCommand="SELECT * FROM [Услуги] WHERE ([ID_услуги] = @ID_услуги)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="ID_услуги" SessionField="IDG" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
