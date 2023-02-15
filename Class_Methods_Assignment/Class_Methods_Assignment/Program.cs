using System;

namespace Class_Methods_Assignment
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello Harshini!");
            string[] skills = new string[] { "C", "Java", "SQL" };
            Instructors instructor = new Instructors("Harshini", 4.6f, 4, skills);
            Console.WriteLine("Is instructor eligible: " + instructor.validateligibility());
            Console.WriteLine("Does instructor have skill in python: " + instructor.CheckSkill("python"));
        }
    }
}
