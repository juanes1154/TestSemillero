using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Ecosystem
{
    public interface IPrey
    {
        Animal Animal
        {
            get;
            set;
        }

        void Run();
    }
}
