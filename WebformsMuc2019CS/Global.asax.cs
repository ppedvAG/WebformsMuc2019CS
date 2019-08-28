using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace WebformsMuc2019CS
{
    public class Global : HttpApplication
    {

        void Session_Start(object sender, EventArgs e)
        {
            var u=(int)Application["users"];
        
            Application["users"] = ++u;
        }
        void Session_End(object sender, EventArgs e)
        {

        }

        void Application_Start(object sender, EventArgs e)
        {
            // Code, der beim Anwendungsstart ausgeführt wird
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Application["users"] = 0;
        }
    }
}