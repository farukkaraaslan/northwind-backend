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
    List<Product> GetAll();
    List<ProductDetailDto> GetProductDetail();
    List<Product> GetByUnitPirce(decimal min,decimal max);
    IResult Add(Product product);
    Product GetById(int productId);
}
