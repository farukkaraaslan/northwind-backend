using Business.Abstract;
using Business.Constants;
using Business.ValidaitonRules.FluentValidaiton;
using Core.Aspects.Autofact.Validation;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata.Ecma335;
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
    [ValidationAspect(typeof(CustomerValidator))]
    public IResult Add(Customer customer)
    {
        
        customerDal.Add(customer);
        return new SuccessResult(Messages.Product.Added);
    }

    [ValidationAspect(typeof(CustomerValidator))]
    public IResult Update(Customer customer)
    {
        customerDal.Update(customer);
        return new SuccessResult(Messages.Customer.Updated);
    }
    public IResult Delete(string id)
    {
        customerDal.Delete(customerDal.Get(c=>c.Id==id));
        return new SuccessResult(Messages.Customer.Deleted);    
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
        return new SuccessDataResult<Customer>(customerDal.Get(c=>c.Id==customerId));
    }
}
