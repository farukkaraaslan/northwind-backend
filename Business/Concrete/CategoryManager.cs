using Business.Abstract;
using Business.Constants;
using Business.ValidaitonRules.FluentValidaiton;
using Core.Aspects.Autofact.Validation;
using Core.Utilities.Business;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using Microsoft.EntityFrameworkCore.ChangeTracking.Internal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Concrete;

public class CategoryManager : ICategoryService
{
    ICategoryDal categoryDal;
    IProductService productService;

    public CategoryManager(ICategoryDal categoryDal, IProductService productService)
    {
        this.categoryDal = categoryDal;
        this.productService = productService;
    }

    [ValidationAspect(typeof(CategoryValidator))]
    public IResult Add(Category category)
    {
        IResult result = BusinessRules.Run(
           CheckIfCategoryNameIsUnique(category.Name)
           );
        if (result != null)
        {
            return result;
        }
        categoryDal.Add(category);
        return new SuccessResult();
    }
    [ValidationAspect(typeof(CategoryValidator))]
    public IResult Update(Category category)
    {
        categoryDal.Update(category); 
        return new SuccessResult();
    }
    public IResult Delete(int id)
    {
        IResult result = BusinessRules.Run(
            CheckIfCategoryHasProduct(id)
            );
        if (result!=null)
        {
            return result;
        }
        categoryDal.Delete(categoryDal.Get(c => c.Id == id));
        return new SuccessResult();
    }

    public IDataResult<List<Category>> GetAll()
    {
        return new SuccessDataResult<List<Category>>(categoryDal.GetAll(),Messages.Category.CategoryListed);
    }

    public IDataResult<Category> GetById(int categoryId)
    {
        return new SuccessDataResult<Category>( categoryDal.Get(c=>c.Id== categoryId),Messages.Category.CategoryListed);
    }

    public IDataResult<Category> GetByName(string name)
    {
        return new SuccessDataResult<Category>(categoryDal.Get(c => c.Name == name), Messages.Category.CategoryListed);
    }

    private IResult CheckIfCategoryHasProduct(int categoryId)
    {
        var result = productService.GetByCategoryId(categoryId);
        if (result != null)
        {
            return new ErrorResult(Messages.Category.CheckIfCategoryHasProductError);
        }
        return new SuccessResult();
    }
   private IResult CheckIfCategoryNameIsUnique(string categoryName)
    {
        var result= categoryDal.GetAll(c=>c.Name==categoryName).Any();

        if (result)
        {
            return new ErrorResult(Messages.Category.CheckIfCategoryNameIsUniqueError);
        }
        return new SuccessResult();
    }
}
