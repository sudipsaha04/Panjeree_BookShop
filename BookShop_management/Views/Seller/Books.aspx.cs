using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShop_management.Views.Seller
{
    public partial class Books : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();

            if (!IsPostBack)
            {
                ShowBooks();
                
            }
        }

        private void ShowBooks()
        {
            string Query = @"
                SELECT B.BId, B.BName, A.AutName, C.CatName, B.BQty, B.BPrice
                FROM BookTbl B
                JOIN AuthorTbl A ON B.BAuthor = A.AutId
                JOIN CategoryTbl C ON B.BCategory = C.CatId";
            BooksList.DataSource = Con.GetData(Query);
            BooksList.DataBind();
        }

        int Key = 0;
        protected void AuthorsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            BNameTb.Value = BooksList.SelectedRow.Cells[2].Text;
            QtyTb.Value = BooksList.SelectedRow.Cells[5].Text;
            PriceTb.Value = BooksList.SelectedRow.Cells[6].Text;
            if (BNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(BooksList.SelectedRow.Cells[1].Text);
            }
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (QtyTb.Value == "" || PriceTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!!";
                }
                else
                {
                    
                    int Quantity = Convert.ToInt32(QtyTb.Value);
                    int Price = Convert.ToInt32(PriceTb.Value);

                    string Query = "Update BookTbl set BQty = {0}, BPrice = {1} where BId={2}";
                    Query = string.Format(Query, Quantity, Price, BooksList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowBooks();
                    ErrMsg.Text = "Book Updated!!!";
                    QtyTb.Value = "";
                    PriceTb.Value = "";

                }
            }
            catch (Exception Ex)
            {

                ErrMsg.Text = Ex.Message;
            }
        }
    }
}