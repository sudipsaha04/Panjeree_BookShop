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
            string Query = $@"
                SELECT B.BId, B.BName, A.AutName, C.CatName, B.BQty, B.BPrice
                FROM BookTbl B
                JOIN AuthorTbl A ON B.BAuthor = A.AutId
                JOIN CategoryTbl C ON B.BCategory = C.CatId
                WHERE B.BAuthor = {authorId}";
            BooksList.DataSource = Con.GetData(Query);
            BooksList.DataBind();
        }

        int Key = 0;
        protected void AuthorsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
           
                Key = Convert.ToInt32(AuthorsList.SelectedRow.Cells[1].Text);
                ShowBooksByAuthor(Key);  
            
        }
    }
}