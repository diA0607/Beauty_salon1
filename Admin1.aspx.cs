using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASOIU4
{
    public partial class Admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            // Получаем выбранную дату из элемента Calendar
            DateTime selectedDate = Calendar1.SelectedDate;

            // Фильтруем данные SqlDataSource1 по выбранной дате
            SqlDataSource1.SelectCommand = "SELECT [ID_посещения], [Дата], [ID_клиента], [ID_услуги], [ID_статуса], [ID_сотрудника] FROM [Посещения] WHERE [Дата] = @SelectedDate ORDER BY [Дата] DESC";
            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add("SelectedDate", selectedDate.ToString());
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
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
    }
}