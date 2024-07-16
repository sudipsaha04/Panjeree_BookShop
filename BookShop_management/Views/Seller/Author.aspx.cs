using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShop_management.Views.Seller
{
    public partial class Author : System.Web.UI.Page
    {
        Models.Functions Con;

        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowAuthors();
        }

        private void ShowAuthors()
        {
            string Query = "Select *from AuthorTbl";
            AuthorsList.DataSource = Con.GetData(Query);
            AuthorsList.DataBind();
        }

        private void ShowBooksByAuthor(int authorId)
        {
            string Query = $"Select * from BookTbl where BAuthor = {authorId}";
            BooksList.DataSource = Con.GetData(Query);
            BooksList.DataBind();
        }

        protected void AuthorsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            ANameTb.Value = AuthorsList.SelectedRow.Cells[2].Text;
            GenCb.SelectedItem.Value = AuthorsList.SelectedRow.Cells[3].Text;
            CountryCb.SelectedItem.Value = AuthorsList.SelectedRow.Cells[4].Text;
            if (ANameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(AuthorsList.SelectedRow.Cells[1].Text);
                ShowBooksByAuthor(Key);  // Show books by selected author
            }
        }
    }
}