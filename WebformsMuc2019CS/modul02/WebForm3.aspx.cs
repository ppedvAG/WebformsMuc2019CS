using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsMuc2019CS.modul02
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            lblResult.Text = (double.Parse(txtEins.Text) + double.Parse(txtZwei.Text)).ToString();

        }

        protected void btnMinus_Click(object sender, EventArgs e)
        {
            lblResult.Text = (double.Parse(txtEins.Text) - double.Parse(txtZwei.Text)).ToString();

        }
    }
}