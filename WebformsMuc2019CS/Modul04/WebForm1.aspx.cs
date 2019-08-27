using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsMuc2019CS.Modul04
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var monate = new string[12];
            for (int i = 0; i <= 11; i++)
            {
                monate[i] = CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(i + 1);
                DropDownList1.Items.Add(monate[i]);
            }
         
            DropDownList2.DataSource = monate;
            DropDownList2.DataBind();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedValue;
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}