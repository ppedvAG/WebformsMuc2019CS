using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsMuc2019CS.Modul05
{
    public partial class SetCookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var mycookie = new HttpCookie("eins");
            mycookie.Value = "hallo";
            mycookie.Expires = DateTime.Now.AddHours(2);
            Response.Cookies.Add(mycookie);


        }
    }
}