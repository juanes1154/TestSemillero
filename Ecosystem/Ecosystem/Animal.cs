using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Ecosystem
{
    public abstract class Animal
    {
        public bool IsAlive = false;
        public Random R = new Random();
       
        public int Energy
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
        }

   
    
        public void Eat()
        {
            throw new System.NotImplementedException();
        }

        public void Sleep()
        {
            throw new System.NotImplementedException();
        }
    }
}
