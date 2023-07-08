using Business.Abstract;
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

    public List<Category> GetAll()
    {
        return categoryDal.GetAll();
    }

    public Category GetById(int categoryId)
    {
        return categoryDal.Get(c=>c.CategoryId== categoryId);
    }
}
