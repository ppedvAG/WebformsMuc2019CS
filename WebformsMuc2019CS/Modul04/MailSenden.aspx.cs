using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsMuc2019CS.Modul04
{
    public partial class MailSenden : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            var client = new SmtpClient();

            client.Send("postmaster@ppedv.de", "service@ppedv.de",
                "Feedback von Website", TextBox1.Text);
            btnSend.Enabled = false;
        }
    }
}