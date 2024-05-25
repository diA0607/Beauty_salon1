using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASOIU4
{
    public partial class Uslugi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GridView2.SelectedIndex >= 0)
            {
                int index = GridView2.SelectedIndex;
                string selectedIDG = GridView2.DataKeys[index].Value.ToString();
               

                // Сохраните выбранное значение IDG в сессии
                Session["IDG"] = selectedIDG;
            }
        }

        protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string crit;
            crit = "UPDATE Услуги SET Наименование='" + Convert.ToString(TextBox1.Text) + "'where ID_услуги=" + Session["IDG"];
            SqlDataSource2.SelectCommand = crit;
            GridView2.DataBind();
            Response.Redirect("uslugi.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string crit;
            crit = "UPDATE Услуги SET Стоимость='" + Convert.ToString(TextBox2.Text) + "'where ID_услуги=" + Session["IDG"];
            SqlDataSource2.SelectCommand = crit;
            GridView2.DataBind();
            Response.Redirect("uslugi.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            string crit;
            crit = "UPDATE Услуги SET Описание_услуги='" + Convert.ToString(TextBox3.Text) + "'where ID_услуги=" + Session["IDG"];
            SqlDataSource2.SelectCommand = crit;
            GridView2.DataBind();
            Response.Redirect("uslugi.aspx");
        }
        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}