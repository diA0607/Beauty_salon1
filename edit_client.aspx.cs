using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace ASOIU4
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        int k;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
           
        }
        protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if (GridView2.SelectedIndex >= 0 && GridView2.SelectedIndex < GridView2.Rows.Count)
            {
                // Получите выбранное значение IDG из GridView
                string selectedIDG = GridView2.DataKeys[GridView2.SelectedIndex].Value.ToString();

                // Сохраните выбранное значение IDG в сессии
                Session["IDG"] = selectedIDG;
            }
        }
        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void DropDownList3_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void DropDownList4_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void DropDownList5_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void DropDownList6_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void DropDownList7_SelectedIndexChanged1(object sender, EventArgs e)
        {
            // Сохраните выбранное значение IDT в сессии
            Session["IDT"] = this.DropDownList7.SelectedIndex;
            k = this.DropDownList7.SelectedIndex;
            
        }
        protected void DropDownList8_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=LAPTOP-VEU33095\\SQLEXPRESS;Initial Catalog=beauty;Integrated Security=True";
            var connect = new SqlConnection(connectionString);
            connect.Open();
            string sdate;   
            sdate = Convert.ToString(TextBox4.Text);

            string sqlQ2 = "SELECT [ID_услуги] FROM Заказ WHERE [ID_заказа]=" + Session["IDG"];
            var getMaxIdCommand2 = new SqlCommand(sqlQ2, connect);
            int usl = Convert.ToInt32(getMaxIdCommand2.ExecuteScalar());
            string sqlQ3 = "SELECT [ID_клиента] FROM Заказ WHERE [ID_заказа]=" + Session["IDG"];
            var getMaxIdCommand3 = new SqlCommand(sqlQ3, connect);
            int client = Convert.ToInt32(getMaxIdCommand3.ExecuteScalar());
            string sqlQ4 = "SELECT [ID_сотрудника] FROM Заказ WHERE [ID_заказа]=" + Session["IDG"];
            var getMaxIdCommand4 = new SqlCommand(sqlQ4, connect);
            int sotr = Convert.ToInt32(getMaxIdCommand4.ExecuteScalar());

            string sqlQ;
            string getMaxIdQuery = "SELECT MAX ([ID_посещения]) FROM Посещения";
            var getMaxIdCommand = new SqlCommand(getMaxIdQuery, connect);
            int maxId = Convert.ToInt32(getMaxIdCommand.ExecuteScalar());
            int id = maxId + 1;
            sqlQ = "INSERT INTO Посещения([ID_посещения], Дата, [ID_клиента], [ID_услуги], [ID_статуса], [ID_сотрудника]) VALUES ('" + id + "', '" + sdate + "', '" + client + "', '" + usl + "', '" + Session["IDT"] + "', '" + sotr + "')";
            var mycom = new SqlCommand();
            mycom.CommandText = sqlQ;
            mycom.Connection = connect;
            mycom.ExecuteNonQuery();
            string crit;
            crit = "DELETE Заказ WHERE ID_заказа=" + Session["IDG"];
            SqlDataSource5.SelectCommand = crit;
            GridView2.DataBind();
            connect.Close();
            DropDownList7.SelectedIndex = 0;
            Response.Redirect("edit_client.aspx");
        }

        protected void SqlDataSource11_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}