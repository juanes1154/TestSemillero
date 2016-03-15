using System;

using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {

        static void Main(string[] args)
        {
            int[]  A= { 5, 3, 6, 3, 4, 2 };
            int max = 0, x, y, N = A.Length;
            string parMaximo = "";
            for (int i = 0; i < N; i++)
            {
               x = A[i];
               for (int j = 0; j < N; j++)
                {
                    y = A[j];
                    if (i <= j && j < N && x <= y)
                   {
                       Console.WriteLine("(" + i + ") (" + j + ")" + " "+ "Distance " + Convert.ToString(j-i));
                      if ((j - i) > max)
                     {
                         parMaximo = "(" + i + ") (" + j + ")";
                          max = j- i;
                     }            
                    }
                }
            }
            Console.WriteLine("The max distance " + max);
            Console.WriteLine(parMaximo);
            Console.ReadKey(); 
        }
    }


}


