using SportsStore.Domain.Abstract;
using SportsStore.Domain.Entities;
using SportsStore.WebUI.Models;
using System.Linq;
using System.Web.Mvc;

namespace SportsStore.WebUI.Controllers
{
    public class ProductController : Controller
    {
        private IProductRepository repository;
        public int PageSize = 5;

        public ProductController(IProductRepository productRepository)
        {
            this.repository = productRepository;
        }

        public ViewResult List(string category, int page = 1)
        {
            var products = repository.Products.Where(p => category == null || p.Category.ToUpper() == category.ToUpper());
            var pagedProducts = products.OrderBy(p => p.ProductID).Skip((page - 1) * PageSize).Take(PageSize);
            var model = new ProductsListViewModel()
            {
                Products = pagedProducts,
                PagingInfo = new PagingInfo()
                {
                    CurrentPage = page,
                    ItemsPerPage = PageSize,
                    TotalItems = category == null ? repository.Products.Count() : products.Count()
                },
                CurrentCategory = category
            };
            return View(model);
        }

        public FileContentResult GetImage(int productid)
        {
            Product p = repository.Products.FirstOrDefault(x => x.ProductID.Equals(productid));
            if (p != null)
            {
                return File(p.ImageData, p.ImageMimeType);
            }
            return null;
        }
    }
}
