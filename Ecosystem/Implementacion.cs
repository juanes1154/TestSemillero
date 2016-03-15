using System;

public class Class1
{
	public Class1()
	{
        AnimalFactory factory = new AnimalFactory();
        Animal instance = factory.CreateAnimal("Lion");
	}
}
