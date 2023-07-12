using Core.Utilities.Results;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Abstract;

public interface IOrderService
{
    IResult Add(Order order);
    IResult Update(Order order);
    IResult Delete(int id);
    IDataResult<List<Order>> GetAll();
    IDataResult<List<Order>> GetByOrderDate(DateTime orderDate);
    IDataResult<Order> GetById(int orderId);
    IDataResult<Order> GetByCustomerId(string customerId);
}
