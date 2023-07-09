using Business.Concrete;
using DataAccess.Concrete.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleUI
{
    public static class Product 
    {
        public static void GetAll()
        {
            NortwindDbContext context = new NortwindDbContext();
            ProductManager productManager = new ProductManager(new EfProductDal(context));
            var result = productManager.GetAll();
            if (result.Success)
            {
                foreach (var product in result.Data)
                {
                    Console.WriteLine(product.ProductId + "/" + product.ProductName+"/"+product.UnitPrice);
                    Console.WriteLine(result.Message);
                }
            }
            else
            {
                Console.WriteLine(result.Message);
            }

        }
        public static void GetProductDetail()
        {
            NortwindDbContext context = new NortwindDbContext();
            ProductManager productManager = new ProductManager(new EfProductDal(context));
            var result = productManager.GetProductDetail();
            if (result.Success)
            {
                foreach (var product in result.Data)
                {
                    Console.WriteLine(product.ProductName + "/" + product.CategoryName);
                    Console.WriteLine(result.Message);
                }
            }
            else
            {
                Console.WriteLine(result.Message);
            }

        }
    }
}
