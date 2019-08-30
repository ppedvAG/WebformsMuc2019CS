using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsMuc2019CS.modul14
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static string immeraktuell(HttpContext ctx)
        {
            ctx.Response.Write("Zeit:");
            return DateTime.Now.ToString();
        }
    }
}