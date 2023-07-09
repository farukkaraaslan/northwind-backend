using Business.Concrete;
using DataAccess.Concrete.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleUI;

public static class Category
{
   public static void GetAll()
    {
        NortwindDbContext context = new NortwindDbContext();

        CategoryManager categoryManager = new CategoryManager(new EfCategoryDal(context));
        var result = categoryManager.GetAll().Data;
        foreach (var category in result)
        {
            Console.WriteLine(category.CategoryName);
        }
    }
}
