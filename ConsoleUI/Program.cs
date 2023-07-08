
using Business.Concrete;
using DataAccess.Concrete.EntityFramework;
using DataAccess.Concrete.InMemory;

ProductTest();
//CategoryTest();

static void CategoryTest()
{
    NortwindDbContext context = new NortwindDbContext();

    CategoryManager categoryManager = new CategoryManager(new EfCategoryDal(context));

    foreach (var category in categoryManager.GetAll())
    {
        Console.WriteLine(category.CategoryName);
    }
}
static void ProductTest()
{
    NortwindDbContext context = new NortwindDbContext();
    ProductManager productManager = new ProductManager(new EfProductDal(context));

    foreach (var product in productManager.GetProductDetail())
    {
        Console.WriteLine(product.ProductName + "/" + product.CategoryName);
    }
}
//static void ProductTest()
//{
//    NortwindDbContext context = new NortwindDbContext();
//    ProductManager productManager = new ProductManager(new EfProductDal(context));

//    foreach (var product in productManager.GetByUnitPirce(20, 300))
//    {
//        Console.WriteLine(product.ProductName);
//    }
//}