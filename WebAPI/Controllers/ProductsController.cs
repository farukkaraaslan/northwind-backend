using Business.Abstract;
using Entities.Concrete;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers;

[Route("api/[controller]")]
[ApiController]
public class ProductsController : ControllerBase
{
    IProductService productService;

    public ProductsController(IProductService productService)
    {
        this.productService = productService;
    }

    [HttpGet]
    public IActionResult Get()
    {
        var result = productService.GetAll();
        if (result.Success)
        {
            return Ok(result);
        }
     
        return BadRequest(result);
    } 

    [HttpGet]
    public IActionResult GetById(int id)
    {
        var result = productService.GetById(id);
        if (result.Success)
        {
            return Ok(result);
        }
     
        return BadRequest(result);
    }

    [HttpPost]
    public IActionResult Add([FromBody] Product product)
    {
        var result=productService.Add(product);
        if (result.Success)
        {
            return Ok(result);
        }
        return BadRequest(result);  
    }
}
