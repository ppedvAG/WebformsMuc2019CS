using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;

namespace WebformsMuc2019CS.Modul15
{
    public class MyHub1 : Hub
    {
        public void Hello()
        {
            Clients.All.hello();
        }
        public void CallMsg(string msg)
        {
            Clients.All.UpdateMsgs($"{DateTime.Now.ToShortDateString()}:{msg}");
        }
    }
}