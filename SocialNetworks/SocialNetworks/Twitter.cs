using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Tweetinvi;

namespace SocialNetworks
{
    public class Twitter : Web
    {
        private string user;
        private string password;
        private string url;
        private string appId;


        public string Url
        {
            get
            {
                return "https://twitter.com/";
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

            //T8GjhvtZZpaof2XGWJMePG086 api key
            // Yo9XlCAWoYOhNJDeTAHrXpPSwlB0kCVSEMK5TwfuU697gaVovM secret
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
                return "T8GjhvtZZpaof2XGWJMePG086";
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
                return "Yo9XlCAWoYOhNJDeTAHrXpPSwlB0kCVSEMK5TwfuU697gaVovM";
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
