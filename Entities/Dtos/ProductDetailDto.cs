using Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities.Dtos;

public class ProductDetailDto:IDto
{
    public int ProductId { get; set; }
    public string ProductName { get; set; }
    public string SupplierName { get; set; }
    public string CategoryName { get; set; }
    public string QuantityPerUnit { get; set; }
    public decimal UnitPrice { get; set; }
    public short UnitsInStock { get; set; }
    public short UnitsOnOrder { get; set; }
    public short ReorderLevel { get; set; }
    public bool Discontinued { get; set; }

}
