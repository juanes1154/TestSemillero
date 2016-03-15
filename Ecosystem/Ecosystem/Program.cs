using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace Ecosystem
{
    class Program
    {
        static void Main(string[] args)
        {
            

            Factory factory = new Factory();
            //Animal instance = Convert.ChangeType(Console.ReadLine()),typeof(Animal));

            Animal instance = factory.CreateAnimal(Convert.ToString(Console.ReadLine()));

            Console.Write(instance);  
            Console.ReadKey();
        }
    }
}
