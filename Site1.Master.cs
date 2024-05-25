using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASOIU4
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["IdU"] != null)
            {
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                Label4.Visible = false;
                Label1.Visible = false;
                Label2.Visible = true;
                Button1.Visible = false;
                Button2.Visible = true;
                Button3.Visible = false;
                Label3.Visible = false;
                Label2.Text = "Привет, " + Session["IdU"].ToString() + "!";

            }
            else
            {
                Button2.Visible = false;
            }
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx"); // main
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("News.aspx"); // main
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search1.aspx"); // main
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search2.aspx"); // main
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin1.aspx"); // main
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=LAPTOP-VEU33095\\SQLEXPRESS;Initial Catalog=beauty;Integrated Security=True";
            var connect = new SqlConnection(connectionString);
            connect.Open();
            string sparol, slogin;
            sparol = Convert.ToString(TextBox2.Text);
            slogin = Convert.ToString(TextBox1.Text);
            string sqlQ = "SELECT * FROM Клиенты WHERE Логин='" + slogin + "' AND Пароль='" + sparol + "'";
            //Label1.Visible = true;
            //Label1.Text = "Привет " + slogin;
            var mycom = new SqlCommand();
            mycom.CommandText = sqlQ;
            mycom.Connection = connect;
            SqlDataReader myread = mycom.ExecuteReader();
            if (myread.Read() == true)
            {
                Session["IdU"] = slogin;
                Session["IDP"] = Convert.ToString(myread.GetValue(0));
                Response.Redirect("Lk_login.aspx");
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                Label4.Visible = false;
                Label3.Visible = false;
                Label2.Visible = false;
                Button1.Visible = false;
                Button2.Visible = true;
                Button3.Visible = false;
                Label1.Visible = true;
                Label1.Text = "Привет " + slogin + "!";
               

            }
            else
            {
                TextBox1.Visible = true;
                TextBox1.Text = "";
                TextBox2.Visible = true;
                TextBox2.Text = "";
                Label4.Visible = false;
                Label1.Visible = false;
                Label2.Visible = true;
                Button1.Visible = true;
                Button2.Visible = false;
                Button3.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Label4.Text = "Неправильное имя или пароль, пожалуйста, повторите попытку еще раз!";
            }
            connect.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lk.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            Label4.Visible = false;
            Label1.Visible = false;
            Label2.Visible = true;
            Button1.Visible = true;
            Button2.Visible = false;
            Button3.Visible = true;
            Label3.Visible = true;
            Response.Redirect("index.aspx");
        }
    }
}