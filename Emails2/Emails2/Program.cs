using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
using System.Net;

namespace Emails2
{
    class Program
    {
        public static Dictionary<string, string> DClientes = new Dictionary<string, string>();
        public static Stack<string> SPedido = new Stack<string>();
        public static int Contador = 0;
        public static string line="";

        static void Main(string[] args)
        {
            CreateDictionary();
            CreateStack();
            SendEmail();
        }

        public static void SendEmail()
        {
            var MailFrom = new MailAddress("juan.hernandez@yuxipacific.com");
            string Subject = "Pedido";
            string Message = "";

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential("juan.hernandez@yuxipacific.com", "1152444184j");
            smtp.EnableSsl = true;
            // Console.WriteLine("Sending email...");

            foreach (KeyValuePair<string, string> kvp in DClientes)
            {
                Console.WriteLine("Key = {0}, Value = {1}", kvp.Key, kvp.Value); Contador++;
                Message = "Señor(a), " + kvp.Value + " su pedido de " + SPedido.Pop() + " será despachado en " +Contador+" dias";
                MailMessage mail = new MailMessage(MailFrom, new MailAddress(kvp.Key));
                mail.Subject = Subject;
                mail.Body = Message; 
                smtp.Send(mail);
                Console.ReadKey();
            }
        }

        private static void CreateStack()
        {
            StreamReader reader = new StreamReader("C:/Users/Yuxi/Documents/Visual Studio 2013/Projects/Emails2/Emails2/Archivos/Pedidos.txt");

           // if (reader != null)
           // {
            while ((line = reader.ReadLine()) != null)
                {
                   // string line = reader.ReadLine();
                    string[] data = line.Split(',');
                    SPedido.Push(data[1]);
                }
           // }
        }

        public static void CreateDictionary()
        {
            StreamReader reader = new StreamReader("C:/Users/Yuxi/Documents/Visual Studio 2013/Projects/Emails2/Emails2/Archivos/Personas.txt");
            try
            {
               //if (reader != null)
               // {
                while ((line = reader.ReadLine()) != null) // WGILE 
                    {
                      //  string line = reader.ReadLine();
                        string[] data = line.Split(',');
                        DClientes.Add(data[0], data[1]);
                    }
                //}

            }
            catch (Exception ex)
            {
                
                Console.Write(ex.Message);
            }
            
                //foreach (KeyValuePair<string, string> kvp in DClientes)
                //{
                //    Console.WriteLine("Key = {0}, Value = {1}", kvp.Key, kvp.Value);
                //    Console.ReadKey();
                //}
        }
    }
}
