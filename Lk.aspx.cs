using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace ASOIU4
{
    public partial class Lk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
            string connectionString = "Data Source=LAPTOP-VEU33095\\SQLEXPRESS;Initial Catalog=beauty;Integrated Security=True";
            var connect = new SqlConnection(connectionString);
            connect.Open();
            string sfio, stel, sbd, sparol, spol, slogin;
            sfio = Convert.ToString(TextBox1.Text);
            stel = Convert.ToString(TextBox2.Text);
            sbd = Convert.ToString(TextBox3.Text);
            spol = Convert.ToString(TextBox4.Text);
            slogin = Convert.ToString(TextBox5.Text);
            sparol = Convert.ToString(TextBox6.Text);
            string sqlQ;
            string getMaxIdQuery = "SELECT MAX ([ID_клиента]) FROM Клиенты";
            var getMaxIdCommand = new SqlCommand(getMaxIdQuery, connect);
            int maxId = Convert.ToInt32(getMaxIdCommand.ExecuteScalar());
            int id = maxId + 1;
            sqlQ = "INSERT INTO Клиенты([ID_клиента], ФИО, Номер_телефона, Дата_рождения, Пол, Логин, Пароль) VALUES('" + id + "', '" + sfio + "', '" + stel + "', '" + sbd + "','" + spol + "', '" + slogin + "', '" + sparol + "')";
            var mycom = new SqlCommand();
            mycom.CommandText = sqlQ;
            mycom.Connection = connect;
            mycom.ExecuteNonQuery();
            connect.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
    }
}