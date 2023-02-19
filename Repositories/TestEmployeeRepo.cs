using EFCDemo_Assignment.Models;
using System.Collections.Generic;
using System.Linq;

namespace EFCDemo_Assignment.Repositories
{
    public class TestEmployeeRepo : IEmployeeRepo
    {
        EmployeeContext context;
        public TestEmployeeRepo(EmployeeContext employeeContext)
        {
            context = employeeContext;
        }
        public void AddNewEmployee(Employee employee)
        {
            context.Employees.Add(employee);
            context.SaveChanges();
        }
        public void DeleteEmployee(int id)
        {
            Employee employee = context.Employees.Find(id);
            if (employee != null)
            {
                context.Employees.Remove(employee);
                context.SaveChanges();
            }
        }

        public List<Employee> GetAllEmployees()
        {
            return context.Employees.ToList();
        }
        public void UpdateEmployee(Employee newemployee)
        {
            Employee employee = context.Employees.FirstOrDefault(d =>
            d.EmployeeId == newemployee.EmployeeId);
            if (employee != null)
            {
                employee.EmployeeId = newemployee.EmployeeId;
                employee.EmployeeName = newemployee.EmployeeName;
                employee.DepartmentName = newemployee.DepartmentName;
                employee.Age = newemployee.Age;
                employee.Address = newemployee.Address;
                employee.Contact = newemployee.Contact;
                context.SaveChanges();
            }

        }
        public Employee GetEmployeeById(int id)
        {
            Employee emp = context.Employees.Find(id);
            return emp;
        }
    }
}
