using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SocialNetworks
{
    class Program
    {
        static void Main(string[] args)
        {
            Factory SocialN = new Factory();
            
            Console.WriteLine("Ingrese Red Social");
            
            Web SocialNetwork = SocialN.CreateWeb(Convert.ToString(Console.ReadLine()));
            SocialNetwork.Evaluate();

            Console.Write(SocialNetwork);
            System.Diagnostics.Process.Start(SocialNetwork.Url);
            Console.ReadKey();
        }
    }
}
