using Entities.Concrete;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.ValidaitonRules.FluentValidaiton;

public class CustomerValidator:AbstractValidator<Customer>
{
    public CustomerValidator()
    {
        RuleFor(c => c.CompanyName).NotNull().NotEmpty();
        RuleFor(c => c.ContactName).NotNull().NotEmpty();
        RuleFor(c => c.ContactTitle).NotNull().NotEmpty();
        RuleFor(c => c.Address).NotNull().NotEmpty();
        RuleFor(c => c.City).NotNull().NotEmpty();
        RuleFor(c => c.Country).NotNull().NotEmpty();
        RuleFor(c => c.Phone).NotNull().NotEmpty();
    }
}
