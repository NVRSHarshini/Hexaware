using System;

namespace Inheritance_assignment
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Person person = new Person(1,"Harshini","tpt",123456789);
            Person stu = new Student(1, "Sam", "Tpt", 1234567, 3, 97.5f, "A+", 49000.0f);
            Console.WriteLine(person.Getdetails());
            Console.WriteLine(stu.Getdetails());


            

            Teachingstaff t = new Teachingstaff(5201, "James", "USA", 123464576398, "professor", 100000, "Phd", "Chemistry");
            Console.WriteLine("Teaching Staff");
            Console.WriteLine(t.Getdetails());

            NonTeachingstaff nt = new NonTeachingstaff(4202, "anji", "sklm", 1023468570086, "lab technician", 6000,  "cse", 60);
            Console.WriteLine("Non teaching staff");
            Console.WriteLine(nt.Getdetails());
        }
    }
}
