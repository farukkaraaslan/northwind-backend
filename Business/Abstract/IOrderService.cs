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
    IDataResult<List<Order>> GetAll();
    IDataResult<List<Order>> GetByOrderDate(DateTime orderDate);
    IResult Add(Order order);
    IDataResult<Order> GetById(int orderId);
    IDataResult<Order> GetByCustomerId(string customerId);
}
