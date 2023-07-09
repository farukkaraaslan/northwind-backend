﻿using Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities.Concrete;

public class Order:IEntity
{
    public int OrderId { get; set; }
    public string CustomerId { get; set; }
    public int EmployedId { get; set; }
    public DateTime OrderDate { get; set; }
}
