using Microsoft.EntityFrameworkCore;

namespace EFCDemo_Assignment.Models
{
    public class EmployeeContext : DbContext
    {
        /* public EmployeeContext(DbContext<EmployeeContext> options) : base(options)
         {
         }*/
        /* public DbSet<Employee> Employees { get; set; }*/
        public EmployeeContext(DbContextOptions<EmployeeContext> options) : base(options) { }
        public DbSet<Employee> Employees { get; set; }
    }
}
