using System;

public class Class1
{
	public Animal CreateAnimal(string Tipo)
	{        
            switch (Tipo)
            {
                case "Lion":
                    return new Lion();
                case "Shark":
                    return new Shark();
                case "Wolf":
                    return new Wolf();
                case "Snake":
                    return new Snake();
                case "Seal":
                    return new Seal();
                case "Buffalo":
                    return new Buffalo();
                case "Fish":
                    return new Fish();
                case "Rabbit":
                    return new Rabbit();
                case "Penguin":
                    return new Penguin();
                default:
              throw new NotImplementedException();
            

        }
	}
}
