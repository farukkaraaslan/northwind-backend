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

public class CustomerManager : ICustomerService
{
    ICustomerDal customerDal;

    public CustomerManager(ICustomerDal customerDal)
    {
        this.customerDal = customerDal;
    }

    public IResult Add(Customer customer)
    {
        
        customerDal.Add(customer);
        return new SuccessResult(Messages.ProductAddedMessage);
    }

    public IDataResult<List<Customer>> GetAll()
    {
        return new SuccessDataResult<List<Customer>>(customerDal.GetAll());
    }

    public IDataResult<List<Customer>> GetByCity(string cityName)
    {
        return new SuccessDataResult<List<Customer>>(customerDal.GetAll(c=>c.City==cityName));
    }

    public IDataResult<Customer> GetById(string customerId)
    {
        return new SuccessDataResult<Customer>(customerDal.Get(c=>c.CustomerId==customerId));
    }
}
