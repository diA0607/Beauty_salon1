using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace ASOIU4
{
    public partial class Lk_zakaz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Очистите значения сессии
                Session["IDT"] = null;
                Session["IDG"] = null;

                // Обновите элементы управления, если это необходимо
                DropDownList1.SelectedIndex = 0;

                // Обновите SqlDataSource перед вызовом DataBind
                SqlDataSource4.SelectParameters["ID_группы"].DefaultValue = null;
                SqlDataSource5.SelectParameters["ID_услуги"].DefaultValue = null;

                GridView1.DataBind();
                DetailsView1.DataBind();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Int32 IDU;
            
            IDU = Convert.ToInt32(Session["IDP"]);
            if (IDU!=0)
            {
                string connectionString = "Data Source=LAPTOP-VEU33095\\SQLEXPRESS;Initial Catalog=beauty;Integrated Security=True";
                var connect = new SqlConnection(connectionString);
                connect.Open();
                string sqlQ;
                string getMaxIdQuery = "SELECT MAX ([ID_заказа]) FROM Заказ";
                var getMaxIdCommand = new SqlCommand(getMaxIdQuery, connect);
                int maxId = Convert.ToInt32(getMaxIdCommand.ExecuteScalar());
                int id = maxId + 1;
                sqlQ = "INSERT INTO Заказ(ID_заказа, ID_клиента, ID_услуги, ID_сотрудника) VALUES('" + id + "', '" + Session["IDP"] + "', '" + Session["IDG"] + "', '" + this.DropDownList2.SelectedIndex + "')";
                var mycom = new SqlCommand();
                mycom.CommandText = sqlQ;
                mycom.Connection = connect;
                mycom.ExecuteNonQuery();
                connect.Close();
                Response.Redirect("Lk_login.aspx");
            }
            else
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if (GridView1.SelectedIndex >= 0)
            {
                // Получите выбранное значение IDG из GridView
                string selectedIDG = GridView1.DataKeys[GridView1.SelectedIndex].Value.ToString();

                // Сохраните выбранное значение IDG в сессии
                Session["IDG"] = selectedIDG;

                // Обновите данные в DetailsView
                DetailsView1.DataBind();
            }
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Session["IDT"] = this.DropDownList1.SelectedIndex;
        }

        protected void SqlDataSource4_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource5_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}