using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SocialNetworks
{
    public interface Web
    {
        string User
        {
            get;
            set;
        }

        string Password
        {
            get;
            set;
        }

        string AppId
        {
            get;
            set;
        }

        string AppSecret
        {
            get;
            set;
        }

        int Network
        {
            get;
            set;
        }

        string Url
        {
            get;
            set;
        }
      //  string User="";
      //  string Password = "";
    
        void Evaluate();
    }
}
