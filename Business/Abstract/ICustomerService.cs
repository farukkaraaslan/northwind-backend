using Core.Utilities.Results;
using Entities.Concrete;
using Entities.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Abstract;

public interface ICustomerService
{
    IResult Add(Customer customer);
    IResult Update(Customer customer);
    IResult Delete(string id);
    IDataResult<List<Customer>> GetAll();
    IDataResult<List<Customer>> GetByCity(string cityName);
    IDataResult<Customer> GetById(string customerId);
}
