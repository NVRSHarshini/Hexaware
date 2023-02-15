using System;

namespace Relation_assignment
{
    internal class Program
    {
        class Address
        {
            public string street, city, state, zipCode;
            public Address(string street, string city, string state, string zipCode)
            {
                this.street = street;
                this.city = city;
                this.state = state;
                this.zipCode = zipCode;
            }


        }
        class Employee
        {
            public string name;
            public int empid;
            public Address address;
            public Employee(string name, int empid, Address address)
            {
                this.name = name;
                this.empid = empid;
                this.address = address;

            }

            public void GetEmplInfo()
            {
                Console.WriteLine($"emp id = {empid}\nname = {name}\n" +
                    $"street = {address.street}\ncity = {address.city}\nstate = {address.state}\n" +
                    $"zipcode = {address.zipCode}");
            }
            static void Main(string[] args)
            {
                Address address = new Address("Teacher's colony", "Tirupati", "Andhra Pradesh", "517501");
                Employee employee = new Employee("Sam Harshini", 1, address);
                employee.GetEmplInfo();
            }
        }
    }
}
