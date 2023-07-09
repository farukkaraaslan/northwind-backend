using Business.Concrete;
using DataAccess.Concrete.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleUI;

public static class Customer
{
    public static void GetAll()
    {
        NortwindDbContext context = new NortwindDbContext();
        CustomerManager customerManager = new CustomerManager(new EfCustomerDal(context));
        var result = customerManager.GetAll();
        if (result.Success)
        {
            foreach (var customer in result.Data)
            {
                Console.WriteLine(customer.CustomerId + "/" + customer.CompanyName + "/" + customer.City);
                Console.WriteLine(result.Message);
            }
        }
        else
        {
            Console.WriteLine(result.Message);
        }

    }
}
