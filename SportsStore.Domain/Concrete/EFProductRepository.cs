using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SportsStore.Domain.Abstract;
using SportsStore.Domain.Entities;

namespace SportsStore.Domain.Concrete
{
    public class EFProductRepository : IProductRepository
    {
        private EFDbContext context = new EFDbContext();

        public IEnumerable<Product> Products
        {
            get { return context.Products; }
        }

        public void SaveProduct(Product product)
        {
            if (product.ProductID == 0)
            {
                context.Products.Add(product);
            }
            else
            {
                Product p = context.Products.Find(product.ProductID);
                if (p != null)
                {
                    p.Category = product.Category;
                    p.Description = product.Description;
                    p.Name = product.Name;
                    p.Price = product.Price;
                    p.ImageData = product.ImageData;
                    p.ImageMimeType = product.ImageMimeType;
                }
            }
            context.SaveChanges();
        }

        public string DeleteProduct(int productId)
        {
            Product p = context.Products.Find(productId);
            if (p != null)
            {
                context.Products.Remove(p);
                context.SaveChanges();
                return p.Name;
            }

            return string.Empty;
        }
    }
}
