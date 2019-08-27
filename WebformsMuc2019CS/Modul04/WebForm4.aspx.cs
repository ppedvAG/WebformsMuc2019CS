using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsMuc2019CS.Modul04
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                var fname =Path.GetFileName( FileUpload1.PostedFile.FileName);

                FileUpload1.PostedFile.SaveAs(Server.MapPath(@"~\imgs\") +
                    fname);
                Image1.ImageUrl = "/imgs/" + fname;
            }
        }
    }
}