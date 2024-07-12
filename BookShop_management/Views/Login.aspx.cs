using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShop_management.Views
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();

           

        }
        public static string UName = "";
        public static int User;

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            if (unameTb.Value == "" || PasswordTb.Value == "")
            {
                ErrMsg.Text = "Missing Data!!!";
            }else if(unameTb.Value == "admin@gmail.com" && PasswordTb.Value == "Password")
            {
                Response.Redirect("Admin/Books.aspx");
            }
            else
            {
                string Query = "Select * from SellerTbl Where SelEmail='{0}' and SelPass = '{1}' ";
                Query = string.Format(Query,unameTb.Value,PasswordTb.Value);
                DataTable dt = Con.GetData(Query);
                if(dt.Rows.Count == 0)
                {
                    Response.Redirect("Admin/Books.aspx");
                }
                else
                {
                    UName =  unameTb.Value;
                    User = Convert.ToInt32(dt.Rows[0][0].ToString());
                    //Response.Redirect("Seller/Selling.aspx");
                }
            }

        }
    }
}