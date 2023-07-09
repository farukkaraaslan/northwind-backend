using Business.Abstract;
using Business.Constants;
using Core.Utilities.Results;
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

    public IResult Add(Product product)
    {
        if (product.ProductName.Length<2)
        {
            return new ErrorResult(Messages.ProductNameInValid);
        }
        productDal.Add(product); 
        return new SuccessResult(Messages.ProductAddedMessage);
    }

    public IDataResult<List<Product>> GetAll()
    {
        return new SuccessDataResult<List<Product>>(productDal.GetAll(),Messages.ProductListed);
    }

    public IDataResult<Product> GetById(int productId)
    {
        return new SuccessDataResult<Product>(productDal.Get(p => p.ProductId == productId));
    }

    public IDataResult<List<Product>> GetByUnitPirce(decimal min, decimal max)
    {
       return new SuccessDataResult<List<Product>>( productDal.GetAll(p=>p.UnitPrice>=min && p.UnitPrice<=max));
    }

    public IDataResult<List<ProductDetailDto>> GetProductDetail()
    {
        return new SuccessDataResult<List<ProductDetailDto>>(productDal.GetProductDetails(),Messages.ProductListed);
    }
}
