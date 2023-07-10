using Business.Abstract;
using Business.Constants;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Concrete;

public class CategoryManager : ICategoryService
{
    ICategoryDal categoryDal;

    public CategoryManager(ICategoryDal categoryDal)
    {
        this.categoryDal = categoryDal;
    }

    public IResult Add(Category category)
    {
        categoryDal.Add(category);
        return new SuccessResult();
    }
    public IResult Update(Category category)
    {
        categoryDal.Update(category); 
        return new SuccessResult();
    }
    public IResult Delete(int id)
    {
        var result=categoryDal.Get(c=>c.Id == id);
        categoryDal.Delete(result);
        return new SuccessResult();
    }

    public IDataResult<List<Category>> GetAll()
    {
        return new SuccessDataResult<List<Category>>(categoryDal.GetAll(),Messages.CategoryListed);
    }

    public IDataResult<Category> GetById(int categoryId)
    {
        return new SuccessDataResult<Category>( categoryDal.Get(c=>c.Id== categoryId),Messages.CategoryListed);
    }

    public IDataResult<Category> GetByName(string name)
    {
        throw new NotImplementedException();
    }

   
}
