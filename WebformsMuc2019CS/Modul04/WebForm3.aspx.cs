using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsMuc2019CS.Modul04
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public string[] ToDoListe { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack==false)
            {
                ladeTodos();
            }
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            File.AppendAllText(Server.MapPath(@"~\app_data\todoitems.txt"), TextBox1.Text +
                Environment.NewLine);
            ladeTodos();
        }
        private void ladeTodos()
        {
            ToDoListe = File.ReadAllLines(Server.MapPath(@"~\app_data\todoitems.txt"));
        }
    }
}