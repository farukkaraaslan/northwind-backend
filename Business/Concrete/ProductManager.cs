using Business.Abstract;
using DataAccess.Abstract;
using DataAccess.Concrete.InMemory;
using Entities.Concrete;
using Entities.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Concrete;

public class ProductManager : IProductService
{
     IProductDal productDal;


    public ProductManager(IProductDal productDal)
    {
        this.productDal = productDal;
    }

    public void Add(Product product)
    {
        productDal.Add(product); 
    }

    public List<Product> GetAll()
    {
        return productDal.GetAll();
    }

    public Product GetById(int productId)
    {
       return productDal.Get(p=>p.ProductId==productId);
    }

    public List<Product> GetByUnitPirce(decimal min, decimal max)
    {
       return productDal.GetAll(p=>p.UnitPrice>=min && p.UnitPrice<=max);
    }

    public List<ProductDetailDto> GetProductDetail()
    {
        return productDal.GetProductDetails();
    }
}
