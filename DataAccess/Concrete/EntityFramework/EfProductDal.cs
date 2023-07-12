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
 

    public List<ProductDetailDto> GetProductDetails()
    {
        using (NortwindDbContext context=new NortwindDbContext())
        {
            var result = from p in context.Products
                         join c in context.Categories
                       
                         on p.CategoryId equals c.Id
                         join s in context.Suppliers
                         on p.SupplierId equals s.Id
                         select new ProductDetailDto
                         {
                             ProductId = p.ProductID,
                             ProductName = p.ProductName,
                             SupplierName=s.CompanyName,
                             CategoryName = c.Name,
                             QuantityPerUnit=p.QuantityPerUnit,
                             UnitPrice=p.UnitPrice,
                             UnitsOnOrder=p.UnitsOnOrder,
                             UnitsInStock = p.UnitsInStock,
                             ReorderLevel=p.ReorderLevel,
                             Discontinued=p.Discontinued,


                         };
            return result.ToList();
        }
       
    }
}
