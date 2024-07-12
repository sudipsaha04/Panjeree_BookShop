<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/SellerMaster.Master" AutoEventWireup="true" CodeBehind="Selling.aspx.cs" Inherits="BookShop_management.Views.Seller.Selling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">
        </div>

        <div class="row">
            <div class="col-md-5">
                <h3 class="text-center" style="color: teal;">Book Details</h3>

                <div class="row">
                    <div class="col">
                        <div class="mt-3">
                            <label for="" class="form-label text-success text-center">Book Name</label>
                            <input type="text" placeholder="Your Email Here" autocomplete="off" runat="server" class="form-control" />

                        </div>
                    </div>
                    <div class="col">
                        <div class="mt-3">
                            <label for="" class="form-label text-success">Book Price</label>
                            <input type="email" placeholder="Your Email Here" autocomplete="off" runat="server" class="form-control" id="Email1" />

                        </div>
                    </div>
                </div>
                
                        <div class="row">
                            <div class="col">
                                <div class="mt-3">
                                    <label for="" class="form-label text-success">Book Name</label>
                                    <input type="text" placeholder="Your Email Here" autocomplete="off" runat="server" class="form-control" id="Text1" />

                                </div>
                            </div>
                            <div class="col">
                                <div class="mt-3">
                                    <label for="" class="form-label text-success">Book Price</label>
                                    <input type="email" placeholder="Your Email Here" autocomplete="off" runat="server" class="form-control" id="Email2" />

                                </div>
                            </div>
                        </div>
                <div class="row my-5">
                    <h4 class="text-center" style="color: teal;">Book List</h4>
                    <div class="col">
                        <asp:GridView ID="BooksList" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="AuthorsList_SelectedIndexChanged">
   <AlternatingRowStyle BackColor="White" />
   <EditRowStyle BackColor="#7C6F57" />
   <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
   <HeaderStyle BackColor="#000000" Font-Bold="False" ForeColor="White" />
   <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
   <RowStyle BackColor="#E3EAEB" />
   <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
   <SortedAscendingCellStyle BackColor="#F8FAFA" />
   <SortedAscendingHeaderStyle BackColor="#246B61" />
   <SortedDescendingCellStyle BackColor="#D4DFE1" />
   <SortedDescendingHeaderStyle BackColor="#15524A" />
 </asp:GridView>
                    </div>

                      </div>
                    </div>
                    <div class="col-md-7">
                                           <h4 class="text-center" style="color:crimson;">Client's Bill</h4>
                   <div class="col">
                       <asp:GridView ID="BillList" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="AuthorsList_SelectedIndexChanged">
  <AlternatingRowStyle BackColor="White" />
  <EditRowStyle BackColor="#7C6F57" />
  <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
  <HeaderStyle BackColor="#000000" Font-Bold="False" ForeColor="White" />
  <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
  <RowStyle BackColor="#E3EAEB" />
  <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
  <SortedAscendingCellStyle BackColor="#F8FAFA" />
  <SortedAscendingHeaderStyle BackColor="#246B61" />
  <SortedDescendingCellStyle BackColor="#D4DFE1" />
  <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
                   <div class=" d-grid"> <asp:Button Text="Print" runat="server" ID="PrintBtn" class=  "btn-warning btn-block btn"  /></div>
                   
                   </div>
                    </div>

                </div>
            </div>
</asp:Content>
