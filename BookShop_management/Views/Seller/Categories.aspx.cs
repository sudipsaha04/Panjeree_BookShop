using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShop_management.Views.Seller
{
    public partial class Categories : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {

            Con = new Models.Functions();
            ShowCategories();
        }
        private void ShowCategories()
        {
            string Query = "Select *from CategoryTbl";
            CategoriesList.DataSource = Con.GetData(Query);
            CategoriesList.DataBind();
        }
        private void ShowBooksByCategories(int categoryId)
        {
            string Query = $"Select * from BookTbl where BCategory = {categoryId}";
            BooksList.DataSource = Con.GetData(Query);
            BooksList.DataBind();
        }
        int Key = 0;
        protected void AuthorsList_SelectedIndexChanged(object sender, EventArgs e)
        {

            Key = Convert.ToInt32(CategoriesList.SelectedRow.Cells[1].Text);
            ShowBooksByCategories(Key);
        }
    }
}