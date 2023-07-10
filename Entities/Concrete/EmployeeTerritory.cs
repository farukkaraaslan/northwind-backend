using Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities.Concrete;

public class EmployeeTerritory :IEntity
{
    public int Id { get; set; }
    public int EmployeeId { get; set; }
    public int TerritoryId { get; set; }    
}
