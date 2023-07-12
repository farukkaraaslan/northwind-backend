using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Constants;

public static class Messages
{
    public static class Product
    {
        public static string Added = "Ürün Eklendi.";
        public static string Updated = "Ürün güncellendi.";
        public static string Deleted = "Ürün silindi.";
        public static string ProductNameInValid = "Ürün ismi geçersiz.";
        public static string ProductListed = "Ürünler listelendi.";
        public static string ProductConuntOfCategoryError = "Bir kategoriye ait en fazla 30 ürün olabilir.";
        public static string ProductNameAllreadyExist = "Bu ürün adı mevcut.";
        public static string CategoryExistsError = "Bu IDye Ait Bir categori yok.";
    }  
    public static class Category
    {
        public static string Added = "Kategori Eklendi.";
        public static string Updated = "Kategori güncellendi.";
        public static string Deleted = "Kategori silindi.";
        public static string CategoryListed = "Kategoriler listelendi.";
        public static string CheckIfCategoryHasProductError = "Bu kategoriyee ait ürün mevcut.";
        public static string CheckIfCategoryNameIsUniqueError = "Kategori ismi benzersiz olmalı.";

    }
    public static class Customer
    {
        public static string Added= "Müşteri eklendi.";
        public static string Updated = "Müşteri güncellendi.";
        public static string Deleted = "Müşteri silindi.";
        
    }


}
