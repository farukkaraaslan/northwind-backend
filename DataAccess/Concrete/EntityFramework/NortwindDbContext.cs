using Entities.Concrete;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Concrete.EntityFramework;

public class NortwindDbContext:DbContext
{
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlServer(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Northwind;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
    }
    public DbSet<Product> Products{ get; set; }
    public DbSet<Customer> Customers { get; set; }
    public DbSet<Category> Categories{ get; set; }
    public DbSet<Order> Orders{ get; set; }
    public DbSet<Employee> Employees{ get; set; }
    public DbSet<Territory> Territories { get; set; }
    public DbSet<Shipper> Shippers { get; set; }
    public DbSet<Region> Regions { get; set; }
    public DbSet<OrderDetail> OrderDetails { get; set; }
    public DbSet<EmployeeTerritory> EmployeeTerritories { get; set; }
    public DbSet<Supplier> Suppliers { get; set; }
}
