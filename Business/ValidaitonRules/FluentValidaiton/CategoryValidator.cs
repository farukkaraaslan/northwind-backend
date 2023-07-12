using Entities.Concrete;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.ValidaitonRules.FluentValidaiton;

public class CategoryValidator :AbstractValidator<Category>
{
    public CategoryValidator()
    {
        RuleFor(c=>c.Name).NotEmpty().NotNull();
        RuleFor(c=>c.Name).MinimumLength(3);
        RuleFor(c=>c.Description).NotEmpty().NotNull();
        RuleFor(c=>c.Description).MinimumLength(3);
    }
}
