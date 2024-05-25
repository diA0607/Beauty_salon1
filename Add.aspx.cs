using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace ASOIU4
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource11_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=LAPTOP-VEU33095\\SQLEXPRESS;Initial Catalog=beauty;Integrated Security=True";
            var connect = new SqlConnection(connectionString);
            connect.Open();
            string sfio, stel, sbd;
            sfio = Convert.ToString(TextBox1.Text);
            stel = Convert.ToString(TextBox2.Text);
            sbd = Convert.ToString(TextBox3.Text);
            string sqlQ;
            string getMaxIdQuery = "SELECT MAX ([ID_услуги]) FROM Услуги";
            var getMaxIdCommand = new SqlCommand(getMaxIdQuery, connect);
            int maxId = Convert.ToInt32(getMaxIdCommand.ExecuteScalar());
            int id = maxId + 1;
            sqlQ = "INSERT INTO Услуги(ID_услуги, Наименование, Стоимость, Описание_услуги, ID_группы, ID_сотрудника) VALUES('" + id + "', '" + sfio + "', '" + stel + "', '" + sbd + "', '" + DropDownList1.SelectedValue + "', '" + DropDownList2.SelectedValue + "')";
            var mycom = new SqlCommand();
            mycom.CommandText = sqlQ;
            mycom.Connection = connect;
            mycom.ExecuteNonQuery();
            connect.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            DropDownList2.SelectedIndex = 0;
            DropDownList1.SelectedIndex = 0;
            Response.Redirect("Uslugi.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}