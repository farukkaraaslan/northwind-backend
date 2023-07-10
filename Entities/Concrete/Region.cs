using Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities.Concrete;

public class Region :IEntity
{
    public int Id { get; set; }
    public string Description { get; set; }
}
