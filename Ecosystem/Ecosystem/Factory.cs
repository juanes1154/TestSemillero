using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;


namespace Ecosystem
{
    public class Factory  // 
    {
        public Animal CreateAnimal(string Tipo) // ACA LE DECIMOS EL TIPO QUE ME VA A DEVOLVER DE LA CLASE ABS
        {
            // llamado al entorno global donde se corre la APP, osea ecosystem.
            var assembly = Assembly.GetExecutingAssembly();
            // Primero busco el global en donde, obtengo el primer tipo en el cual el nombre sea el del paramero
            var type = assembly.GetTypes().First(t => t.Name == Tipo);
            // creo la instancia del tipo que encontre arriba            
            
            //object O = Activator.CreateInstance(type);
            // EXPLICITA Return(Animal)X;
           // return (Animal)O;

            return (Animal)Activator.CreateInstance(type);
                                       
            //try
            //{
            
    
                //switch (Tipo) // EVALUA SEGUN LO QUE LE MANDO
                //{
                //    case "Lion":
                //        return new Lion();
                //    case "Shark":
                //        return new Shark();
                //    case "Wolf":
                //        return new Wolf();
                //    case "Snake":
                //        return new Snake();
                //    case "Seal":
                //        return new Seal();
                //    case "Buffalo":
                //        return new Buffalo();
                //    case "Fish":
                //        return new Fish();
                //    case "Rabbit":
                //        return new Rabbit();
                //    case "Penguin":
                //        return new Penguin();
                //    case "Eagle":
                //        return new Eagle();
                //    default: throw new NotImplementedException();
                //}
            //}
            //catch (Exception)
            //{
                
            //    Console.Write("Animal no existe");
            //    return null;
            //}
 

        }


    }
}
