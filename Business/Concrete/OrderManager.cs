﻿using Business.Abstract;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace Business.Concrete;

public class OrderManager : IOrderService
{
    IOrderDal orderDal;

    public OrderManager(IOrderDal orderDal)
    {
        this.orderDal = orderDal;
    }

    public IResult Add(Order order)
    {
        return new SuccessDataResult<Order>(order);
    }

    public IDataResult<List<Order>> GetAll()
    {
       return new SuccessDataResult<List<Order>>(orderDal.GetAll());
    }

    public IDataResult<Order> GetByCustomerId(string customerId)
    {
        return new SuccessDataResult<Order>(orderDal.Get(o => o.CustomerId == customerId));
    }

    public IDataResult<Order> GetById(int orderId)
    {
        return new SuccessDataResult<Order>(orderDal.Get(o=>o.OrderId==orderId));
    }

    public IDataResult<List<Order>> GetByOrderDate(DateTime orderDate)
    {
        return new SuccessDataResult<List<Order>>(orderDal.GetAll(o=>o.OrderDate==orderDate));
    }
}
