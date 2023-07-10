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
        CustomerManager customerManager = new CustomerManager(new EfCustomerDal());
        var result = customerManager.GetAll();
        if (result.Success)
        {
            foreach (var customer in result.Data)
            {
                Console.WriteLine(customer.Id + "/" + customer.CompanyName + "/" + customer.City);
                Console.WriteLine(result.Message);
            }
        }
        else
        {
            Console.WriteLine(result.Message);
        }

    }
}
