using System;

namespace Constructor_Overloading
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello Harshini!");
            string[] doc =new string[] { "A", "B", "c" };
            string[] ndoc = new string[] { "A", "B" };
            Insurance i1= new Insurance();
            Insurance i2= new Insurance("Sam",2500,19,doc);
            Console.WriteLine(i2.checkeligibility());
            Console.WriteLine(i1.checkeligibility());
            Console.WriteLine(i2.checkdocuments(ndoc));
        }
    }
}
