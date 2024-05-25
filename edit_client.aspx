<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="edit_client.aspx.cs" Inherits="ASOIU4.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            margin-left: 360px;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style18 {
            margin-right: 0px;
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
   
    <div class="content-wrapper">
         <p >Посещения</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Style="text-align: center;" Width="400px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" CssClass="auto-style18">

            <Columns>
                <asp:BoundField DataField="ID_посещения" HeaderText="ID_посещения" SortExpression="ID_посещения"></asp:BoundField>
                <asp:BoundField DataField="Дата" HeaderText="Дата" SortExpression="Дата"></asp:BoundField>
                <asp:TemplateField HeaderText="ID_клиента" SortExpression="ID_клиента">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("ID_клиента") %>' ID="TextBox1"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource2" DataTextField="ФИО" DataValueField="ID_клиента" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" SelectedValue='<%# Bind("ID_клиента") %>'>

                            <asp:ListItem Value="0">Не выбрано</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_клиента], [ФИО] FROM [Клиенты]"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ID_услуги" SortExpression="ID_услуги">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("ID_услуги") %>' ID="TextBox2"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource3" DataTextField="Наименование" DataValueField="ID_услуги" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1" SelectedValue='<%# Bind("ID_услуги") %>'>

                            <asp:ListItem Value="0">Не выбрано</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_услуги], [Наименование] FROM [Услуги]"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ID_статуса" SortExpression="ID_статуса">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("ID_статуса") %>' ID="TextBox3"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource4" DataTextField="Статус" DataValueField="ID_статуса" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged1" SelectedValue='<%# Bind("ID_статуса") %>'>
                            <asp:ListItem Value="0">Не выбрано</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_статуса], [Статус] FROM [Статус]"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="ID_сотрудника" SortExpression="ID_сотрудника">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("ID_сотрудника") %>' ID="TextBox1"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource10" DataTextField="ФИО" DataValueField="ID_сотрудника" SelectedValue='<%# Bind("ID_сотрудника") %>' Width="185px">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource10" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_сотрудника], [ФИО] FROM [Сотрудники]"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#808080" Font-Bold="True" ForeColor="White" />
            <SelectedRowStyle BackColor="#DCDCDC" Font-Bold="True" ForeColor="White" />
        </asp:GridView>


        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_посещения], [Дата], [ID_клиента], [ID_услуги], [ID_статуса], [ID_сотрудника] FROM [Посещения] ORDER BY [ID_посещения]"></asp:SqlDataSource>
    </div>
  
    
    <div class="content-wrapper">
         <p ">Нерасмотренные записи</p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" Style="text-align: center;" Width="400px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" DataKeyNames="ID_заказа">

            <Columns>
                <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                <asp:BoundField DataField="ID_заказа" HeaderText="ID_заказа" SortExpression="ID_заказа"></asp:BoundField>
                <asp:TemplateField HeaderText="ID_услуги" SortExpression="ID_услуги">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("ID_услуги") %>' ID="TextBox1"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource6" DataTextField="Наименование" DataValueField="ID_услуги" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged1" SelectedValue='<%# Bind("ID_услуги") %>'>

                            <asp:ListItem Value="0">Не выбрано</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_услуги], [Наименование] FROM [Услуги]"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ID_клиента" SortExpression="ID_клиента">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("ID_клиента") %>' ID="TextBox2"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource7" DataTextField="ФИО" DataValueField="ID_клиента" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged1" SelectedValue='<%# Bind("ID_клиента") %>'>

                            <asp:ListItem Value="0">Не выбрано</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource7" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_клиента], [ФИО] FROM [Клиенты]"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ID_сотрудника" SortExpression="ID_сотрудника">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("ID_сотрудника") %>' ID="TextBox3"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource8" DataTextField="ФИО" DataValueField="ID_сотрудника" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged1" SelectedValue='<%# Bind("ID_сотрудника") %>'>

                            <asp:ListItem Value="0">Не выбрано</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource8" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT [ID_сотрудника], [ФИО] FROM [Сотрудники]"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="#CCCC99" />
        <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#808080" Font-Bold="True" ForeColor="White" />
            <SelectedRowStyle BackColor="#DCDCDC" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT * FROM [Заказ]"></asp:SqlDataSource>
        <br />
        <br /> <b>Сохранение заявки в базу:</b><br /> 
    <asp:Label ID="Label3" runat="server" Text="Дата:"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" Width="153px"></asp:TextBox>
    <br />   
    <asp:Label ID="Label4" runat="server" Text="Статус посещения:"></asp:Label>
        <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" AppendDataBoundItems="true" DataSourceID="SqlDataSource11" DataTextField="Статус" DataValueField="ID_статуса" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged1">
        <asp:ListItem Value="0">Не выбрано</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource runat="server" ID="SqlDataSource11" ConnectionString='<%$ ConnectionStrings:beautyConnectionString %>' SelectCommand="SELECT * FROM [Статус]"></asp:SqlDataSource>
        
        <br />    
     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Сохранить" />
       </div>
</asp:Content>
