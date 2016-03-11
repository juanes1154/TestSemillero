using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Google;

namespace SocialNetworks
{
    public class Google : Web
    {
        private string user;
        private string password;
        private string url;
        private string appId;


        public string Url
        {
            get
            {
                return "https://www.google.com.co/";
            }
            set
            {
                url = value;
            }
        }

        public void Evaluate()
        {
            Console.WriteLine("Ingrese Usuario");
            User = Console.ReadLine();
            Console.WriteLine("Ingrese Contraseña");
            Password = Console.ReadLine();
            //215322061782-kj7328cgnjf6tonm8858672ht88fd74q.apps.googleusercontent.com
            //sb0MMfldhzIW75zAcXFNViGs secret
            //throw new NotImplementedException();
        }

        public string User
        {
            get
            {
                return user;
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
                return "215322061782 - kj7328cgnjf6tonm8858672ht88fd74q.apps.googleusercontent.com";
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        public string AppSecret
        {
            get
            {
                return "sb0MMfldhzIW75zAcXFNViGs";
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        public int Network
        {
            get
            {
                throw new NotImplementedException();
            }
            set
            {
                throw new NotImplementedException();
            }
        }
    }
}
