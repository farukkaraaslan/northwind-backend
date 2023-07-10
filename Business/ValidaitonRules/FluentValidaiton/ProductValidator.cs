﻿using Entities.Concrete;
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
        RuleFor(p => p.ProductName).NotEmpty();
        RuleFor(p => p.ProductName).MinimumLength(2);
        RuleFor(p => p.UnitPrice).NotEmpty(); 
        RuleFor(p => p.UnitPrice).GreaterThan(0);
    }
}
