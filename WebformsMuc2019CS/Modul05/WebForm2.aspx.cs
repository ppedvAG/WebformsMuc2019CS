using Microsoft.AspNet.FriendlyUrls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsMuc2019CS.Modul05
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public string MyProperty { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form.AllKeys.Contains("Submit1"))
            {
                MyProperty = Request.Form["Text1"];
                    
            }

            var fus = Request.GetFriendlyUrlSegments().FirstOrDefault();
           
           
        }
    }
}