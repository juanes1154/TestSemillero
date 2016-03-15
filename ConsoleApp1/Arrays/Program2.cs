using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Arrays
{
    class Program2
    {

        static void Main(string[] args)
        {
            sbyte Num1, Num2, Result = 0;

            Num1 = Convert.ToSByte(Console.ReadLine());
            Num2 = Convert.ToSByte(Console.ReadLine());

            for (byte i = 0; i < Math.Abs(Num1); i++)
                Result = Convert.ToSByte(Result + Num2);


            if (Num1 < 0 && Num2 < 0)
                Result = Math.Abs(Result);
            if (Num1 < 0 && Num2 > 0)
                Result = Convert.ToSByte(Result - Result - Result);

            Console.WriteLine("The Result is : " + Result);
            Console.ReadKey();

        }
    }
}
