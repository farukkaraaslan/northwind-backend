using Entities.Concrete;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.ValidaitonRules.FluentValidaiton;

public  class OrderValidator:AbstractValidator<Order>
{
    public OrderValidator()
    {
        RuleFor(o=>o.EmployeeId).NotNull();
        RuleFor(o=>o.OrderDate).NotNull();
        RuleFor(o=>o.RequiredDate).NotNull();
        RuleFor(o=>o.ShippedDate).NotNull();
        RuleFor(o=>o.ShipperId).NotNull();
        RuleFor(o=>o.Freight).NotNull();
        RuleFor(o=>o.ShipName).NotNull();
        RuleFor(o=>o.ShipAddress).NotNull();
        RuleFor(o=>o.ShipCity).NotNull();
        RuleFor(o=>o.ShipCountry).NotNull();
    }
}
