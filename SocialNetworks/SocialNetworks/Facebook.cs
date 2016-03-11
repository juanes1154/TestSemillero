using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Facebook;
using System.Net;

namespace SocialNetworks
{
    public class Facebook : Web
    {

        private string user;
        private string password;
        private string url;
        private string appId;


        public string Url
        {
            get
            {
                return "https://www.facebook.com/";
            }
            set
            {
                url = value;
            }
        }
       public string User
        {
            get
            {
                return 
                    user;
            }
            set
            {
                user = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }
            set
            {
                password = value;
            }
        }

        public string AppId
        {
            get
            {
                return appId = "464210670439993";
            }
            set
            {
                //throw new NotImplementedException();
                appId = value;
            }
        }

        public string AppSecret
        {
            get
            {
                return "57132993225a943863ee742272391bc5";
            }
            set
            {
                throw new NotImplementedException();
                //AppSecret = value;
            }
        }

        public int Network
        {
            get
            {
                return Network;
            }
            set
            {
                Network = value;
            }
        }

        public void Evaluate()
        {
            Console.WriteLine("Ingrese Usuario");
            User = Console.ReadLine();
            Console.WriteLine("Ingrese Contraseña");
            Password = Console.ReadLine();

            //var Usuario = new FacebookClient(AppId + AppSecret);

            //dynamic Objeto = Usuario.Get("Objeto", new { fields = new[] { User, Password} });

            //var id = Objeto.User;

            
            //if (Usuario != null)
            //{
            //   WebRequest.Create(Usuario(AppId,AppSecret,User,Password));
            //}
            
            

            
            //464210670439993 app id
            // 57132993225a943863ee742272391bc5 app s

        }
    }
}

