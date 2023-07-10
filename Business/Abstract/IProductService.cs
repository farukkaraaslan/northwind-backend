 using Core.Utilities.Results;
using Entities.Concrete;
using Entities.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Abstract;

public interface IProductService
{
    IDataResult<List<Product>> GetAll();
    IDataResult<List<ProductDetailDto>> GetProductDetail();
    IDataResult<List<Product>> GetByUnitPirce(decimal min,decimal max);
    IResult Add(Product product);
    IResult Update(Product product);
    IResult Delete(int id);
    IDataResult<Product> GetById(int productId);
}
