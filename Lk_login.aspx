<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Lk_login.aspx.cs" Inherits="ASOIU4.Lk_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 731px;
        }
        .auto-style14 {
            width: 732px;
        }
        .auto-style13 {
             float: left;
            width: 698px; /* Ширина вашего GridView */
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Личный кабинет</h2>
    <br>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Оформить заказ" />
    <br>
    <br>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="698px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style13" ForeColor="Black" GridLines="Vertical" Height="162px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="ID_клиента" HeaderText="ID_клиента" SortExpression="ID_клиента" />
            <asp:BoundField DataField="ФИО" HeaderText="ФИО" SortExpression="ФИО" />
            <asp:BoundField DataField="Номер_телефона" HeaderText="Номер_телефона" SortExpression="Номер_телефона"></asp:BoundField>
            <asp:BoundField DataField="Дата_рождения" HeaderText="Дата_рождения" SortExpression="Дата_рождения"></asp:BoundField>
            <asp:BoundField DataField="Пол" HeaderText="Пол" SortExpression="Пол"></asp:BoundField>
            <asp:BoundField DataField="Логин" HeaderText="Логин" SortExpression="Логин"></asp:BoundField>
            <asp:BoundField DataField="Пароль" HeaderText="Пароль" SortExpression="Пароль"></asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT * FROM [Клиенты] WHERE ([ID_клиента] = @ID_клиента)">
        <SelectParameters>
            <asp:SessionParameter SessionField="IDP" DefaultValue="0" Name="ID_клиента" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <br>
    <br>
   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Обновить номер телефона" />
    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    <br>
    <br>
    <h3>Мои посещения</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="698px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style13" ForeColor="Black" GridLines="Vertical" Height="162px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="ID_посещения" HeaderText="ID_посещения" SortExpression="ID_посещения" />
            <asp:BoundField DataField="Дата" HeaderText="Дата" SortExpression="Дата" />
            <asp:BoundField DataField="ID_клиента" HeaderText="ID_клиента" SortExpression="ID_клиента" Visible="false"></asp:BoundField>
            <asp:TemplateField HeaderText="ID_услуги" SortExpression="ID_услуги">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("ID_услуги") %>' ID="TextBox1"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource3" DataTextField="Наименование" DataValueField="ID_услуги" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" SelectedValue='<%# Bind("ID_услуги") %>'>

                        <asp:ListItem Value="0">Не выбрано</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_услуги], [Наименование] FROM [Услуги]"></asp:SqlDataSource>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ID_статуса" SortExpression="ID_статуса">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("ID_статуса") %>' ID="TextBox2"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource4" DataTextField="ID_статуса" DataValueField="ID_статуса" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1" SelectedValue='<%# Bind("ID_статуса") %>'>

                        <asp:ListItem Value="0">Не выбрано</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_статуса], [Статус] FROM [Статус]"></asp:SqlDataSource>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ID_сотрудника" SortExpression="ID_сотрудника">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("ID_сотрудника") %>' ID="TextBox3"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource5" DataTextField="ID_сотрудника" DataValueField="ID_сотрудника" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged1" SelectedValue='<%# Bind("ID_сотрудника") %>'>

                        <asp:ListItem Value="0">Не выбрано</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_сотрудника], [ФИО] FROM [Сотрудники]"></asp:SqlDataSource>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>
        <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>


    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_посещения], [Дата], [ID_клиента], [ID_услуги], [ID_статуса], [ID_сотрудника] FROM [Посещения] WHERE ([ID_клиента] = @ID_клиента)">
        <SelectParameters>
            <asp:SessionParameter SessionField="IDP" DefaultValue="0" Name="ID_клиента" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <br>
    <h3>Моя корзина</h3>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" Width="698px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style13" ForeColor="Black" GridLines="Vertical" Height="162px" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="ID_заказа" HeaderText="ID_заказа" SortExpression="ID_заказа" Visible="false" />
            <asp:TemplateField HeaderText="ID_услуги" SortExpression="ID_услуги">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("ID_услуги") %>' ID="TextBox1"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource7" DataTextField="Наименование" DataValueField="ID_услуги" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged1" SelectedValue='<%# Bind("ID_услуги") %>'>

                        <asp:ListItem Value="0">Не выбрано</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource7" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_услуги], [Наименование] FROM [Услуги]"></asp:SqlDataSource>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ID_сотрудника" SortExpression="ID_сотрудника">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("ID_сотрудника") %>' ID="TextBox2"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource8" DataTextField="ФИО" DataValueField="ID_сотрудника" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged1" SelectedValue='<%# Bind("ID_сотрудника") %>'>

                        <asp:ListItem Value="0">Не выбрано</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource8" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_сотрудника], [ФИО] FROM [Сотрудники]"></asp:SqlDataSource>
                </ItemTemplate>
            </asp:TemplateField>

            
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT * FROM [Заказ] WHERE ([ID_клиента] = @ID_клиента)">
        <SelectParameters>
            <asp:SessionParameter SessionField="IDP" DefaultValue="0" Name="ID_клиента" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>