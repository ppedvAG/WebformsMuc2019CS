using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsMuc2019CS.modul16
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<System.String> Repeater1_GetData()
        {
            var bilder = Directory.GetFiles(Server.MapPath("~/modul16/bilder"));
            string[] Dateinamen = new string[bilder.Count()];
            for (int i = 0; i < bilder.Length; i++)
            {
                Dateinamen[i]=Path.GetFileName(bilder[i]);
            }
            return Dateinamen;
        }
    }
}