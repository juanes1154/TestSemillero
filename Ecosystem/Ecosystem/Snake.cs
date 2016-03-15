using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Ecosystem
{
    public class Snake : Animal, IPrey, IPredator
    {
        
        public Animal Animal
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


        public void Hunt()
        {
            throw new NotImplementedException(); 
        }


        public void Run()
        {
            throw new NotImplementedException();
        }
    }
}
