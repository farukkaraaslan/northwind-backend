using Business.Abstract;
using Business.Constants;
using Business.ValidaitonRules.FluentValidaiton;
using Core.Aspects.Autofact.Validation;
using Core.Utilities.Business;
using Core.Utilities.Results;
using DataAccess.Abstract;
using DataAccess.Concrete.InMemory;
using Entities.Concrete;
using Entities.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Business.Concrete;

public class ProductManager : IProductService
{
    IProductDal productDal;
    //CategoryService ve ProducService bibirine döngüsel bağımlı oldug için
    Lazy<ICategoryService> categoryService;

    public ProductManager(IProductDal productDal,Lazy< ICategoryService> categoryService)
    {
        this.productDal = productDal;
        this.categoryService = categoryService;
    }

    [ValidationAspect(typeof(ProductValidator))]
    public IResult Add(Product product)
    {
        IResult result=BusinessRules.Run(
            CheckIfProductCountOfCategoryCorrect(product.CategoryId),
          CheckIfCategoryExists(product.CategoryId)
            );
       
        if(result !=null)
        {
            return result;
        };

        productDal.Add(product);
        return new SuccessResult(Messages.Product.Added);

    }

    [ValidationAspect(typeof(ProductValidator))]
    public IResult Update( Product product)
    {
        IResult result = BusinessRules.Run(
         CheckIfProductCountOfCategoryCorrect(product.CategoryId),
         CheckIfProductNameExists(product.ProductName),
         CheckIfCategoryExists(product.CategoryId)
         );
        if (result != null)
        {
            return result;
        };
        productDal.Update(product);
        return new SuccessResult(Messages.Product.Updated);
    }
    public IResult Delete(int id)
    {
        var result=productDal.Get(p=>p.ProductID == id);
        productDal.Delete(result);
        return new SuccessResult(Messages.Product.Deleted);
    }
    public IDataResult<List<Product>> GetAll()
    {
        return new SuccessDataResult<List<Product>>(productDal.GetAll(),Messages.Product.ProductListed);
    }

    public IDataResult<Product> GetById(int productId)
    {
        return new SuccessDataResult<Product>(productDal.Get(p => p.ProductID == productId));
    }

    public IDataResult<List<Product>> GetByUnitPirce(decimal min, decimal max)
    {
       return new SuccessDataResult<List<Product>>( productDal.GetAll(p=>p.UnitPrice>=min && p.UnitPrice<=max),Messages.Product.ProductListed);
    }

    public IDataResult<List<ProductDetailDto>> GetProductDetail()
    {
        return new SuccessDataResult<List<ProductDetailDto>>(productDal.GetProductDetails(),Messages.Product.ProductListed);
    }
    public IDataResult<Product> GetByCategoryId(int categoryId)
    {
        return new SuccessDataResult<Product>(productDal.Get(p => p.CategoryId == categoryId));
    }

    private IResult CheckIfProductCountOfCategoryCorrect(int categoryId)
    {
        var result = productDal.GetAll(p => p.CategoryId == categoryId).Count;
        if (result >= 30)
        {
            return new ErrorResult(Messages.Product.ProductConuntOfCategoryError);
        }
        return new SuccessResult();
    }
    private IResult CheckIfProductNameExists(string productName)
    {
        var result = productDal.GetAll(p => p.ProductName == productName).Any();
        if (result)
        {
            return new ErrorResult(Messages.Product.ProductConuntOfCategoryError);
        }
        return new SuccessResult();
    }
   private IResult CheckIfCategoryExists(int categoryId)
    {
        var result = categoryService.Value.GetById(categoryId);
        if (result.Data == null)
        {
            return new ErrorResult(Messages.Product.CategoryExistsError);
        }
        return new SuccessResult();
    }
}
