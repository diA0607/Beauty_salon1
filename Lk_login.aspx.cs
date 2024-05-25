using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASOIU4
{
    public partial class Lk_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string crit;
            crit = "UPDATE Клиенты SET Номер_телефона='" + Convert.ToString(TextBox1.Text) + "'where ID_клиента=" + Session["IDP"];
            SqlDataSource2.SelectCommand = crit;
            GridView2.DataBind();
            Response.Redirect("Lk_login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lk_zakaz.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

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

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}