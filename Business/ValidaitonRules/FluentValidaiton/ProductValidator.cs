using Entities.Concrete;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.ValidaitonRules.FluentValidaiton;

public class ProductValidator : AbstractValidator<Product>
{
    public ProductValidator()
    {
        RuleFor(p => p.ProductName).NotEmpty().NotNull();
        RuleFor(p => p.ProductName).MinimumLength(2);
        RuleFor(p => p.SupplierId).NotEmpty();
        RuleFor(p => p.CategoryId).NotEmpty();
        RuleFor(p => p.QuantityPerUnit).NotEmpty();
        RuleFor(p => p.UnitsInStock).NotEmpty();
        RuleFor(p => p.UnitsOnOrder).NotNull();
        RuleFor(p => p.UnitPrice).NotEmpty(); 
        RuleFor(p => p.ReorderLevel).NotEmpty(); 
        RuleFor(p => p.Discontinued).NotNull(); 
        RuleFor(p => p.UnitPrice).GreaterThan(0);
    }
}
