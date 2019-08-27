using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsMuc2019CS.Modul04
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        public List<string> monate { get; set; } = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            for (int i = 0; i <= 11; i++)
            {
                monate.Add( CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(i + 1));
              
            }
            Response.ContentType = "application/vnd.ms-excel";
        }
    }
}