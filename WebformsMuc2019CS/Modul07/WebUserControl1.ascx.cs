using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsMuc2019CS.Modul07
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        public string BackGroundColor { get; set; }
        private string _Text;

        public string Text
        {
            get {
                _Text = TextBox1.Text;
                return _Text; }
            set { 
                _Text = value;
                TextBox1.Text = _Text;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            char[] arr = TextBox1.Text.ToCharArray();
            Array.Reverse(arr);
            TextBox1.Text =new  string(arr);

        }
    }
}