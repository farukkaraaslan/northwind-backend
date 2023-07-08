using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.Dtos;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace DataAccess.Concrete.EntityFramework;

public class EfProductDal : EfEntityRepositoryBase<Product, NortwindDbContext>, IProductDal
{
    public EfProductDal(DbContext context) : base(context)
    {
    }

    public List<ProductDetailDto> GetProductDetails()
    {
        using (NortwindDbContext context=new NortwindDbContext())
        {
            var result = from p in context.Products
                         join c in context.Categories
                         on p.CategoryId equals c.CategoryId
                         select new ProductDetailDto
                         {
                             ProductId = p.ProductId,
                             ProductName = p.ProductName,
                             CategoryName = c.CategoryName,
                             UnitsStock = p.UnitsInStock,

                         };
            return result.ToList();
        }
       
    }
}
