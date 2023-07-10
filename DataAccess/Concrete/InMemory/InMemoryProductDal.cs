using DataAccess.Abstract;
using Entities.Concrete;
using Entities.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Concrete.InMemory;

public class InMemoryProductDal : IProductDal
{
    List<Product> products;
    public InMemoryProductDal()
    {
        products= new List<Product> {
            new Product { ProductID=1,CategoryId=1,ProductName="Bardak",UnitPrice=15,UnitsInStock=15},
            new Product { ProductID=2,CategoryId=1,ProductName="Kamera",UnitPrice=500,UnitsInStock=3},
            new Product { ProductID=3,CategoryId=2,ProductName="Telefon",UnitPrice=1500,UnitsInStock=150},
            new Product { ProductID=3,CategoryId=2,ProductName="Klavye",UnitPrice=800,UnitsInStock=17},
            };
    }
    public void Add(Product product)
    {
       products.Add(product);
    }

    public void Delete(Product product)
    {
        Product productToDelete =products.SingleOrDefault(p=> p.ProductID==product.ProductID);
        products.Remove(productToDelete);
    }

    public Product Get(Expression<Func<Product, bool>> filter)
    {
        throw new NotImplementedException();
    }

    public List<Product> GetAll()
    {
        return products;
    }

    public List<Product> GetAll(Expression<Func<Product, bool>> filter = null)
    {
        throw new NotImplementedException();
    }

    public List<Product> GetAllByCategory(int categoryId)
    {
       return products.Where(p => p.CategoryId == categoryId).ToList();
  
    }

    public List<ProductDetailDto> GetProductDetails()
    {
        throw new NotImplementedException();
    }

    public void Update(Product product)
    {
        Product productToUpdate = products.SingleOrDefault(p => p.ProductID == product.ProductID);
        productToUpdate.ProductName=product.ProductName;
        productToUpdate.CategoryId=product.CategoryId;
        productToUpdate.UnitPrice=product.UnitPrice;
        productToUpdate.UnitsInStock=product.UnitsInStock;
    }
}
