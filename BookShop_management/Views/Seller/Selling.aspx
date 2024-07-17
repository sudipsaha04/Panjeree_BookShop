<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/SellerMaster.Master" AutoEventWireup="true" CodeBehind="Selling.aspx.cs" Inherits="BookShop_management.Views.Seller.Selling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function PrintBill() {
            var PGrid = document.getElementById('<%=BillList.ClientID%>');
            PGrid.bordr = 0;
            var PWin = window.open('', 'PrintGrid', 'left =100,top =100,width =1024,height = 768,tollbar =0,scrollbars =1,status = 0,resizable = 1');
            PWin.document.write(PGrid.outerHTML);
            PWin.document.close();
            PWin.focus();
            PWin.print();
            PWin.close();

        }

    </script>
    <style>
        body {
            background-image: url('../../Assets/Images/1last.jpg');
            background-size: auto;
            background-repeat: no-repeat;
            background-position: right;
            background-attachment: fixed;
        }

        .custom-input {
            background-color: bisque;
            color: black;
            border: 1px solid #ccc;
            padding: 8px;
            border-radius: 4px;
        }

            .custom-input:focus {
                outline: solid;
                border-color: black;
                box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            }

            .custom-input::placeholder {
                color: black;
                opacity: 1;
            }

        .btn-brown {
            background-color: coral;
            color: white;
        }

        .text-color {
            color: white;
            font-weight: bolder;
            font-size: large;
        }

        .header-background {
            background-color: coral;
            color: black;
            display: inline-block;
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 30px;
        }

        .header-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">

    <div class="container-fluid">
        <div class="row">
        </div>

        <div class="row">
            <div class="col-md-5">
                <div class="header-container">
                    <h3 class="header-background">Book Details</h3>
                </div>

                <div class="row">
                    <div class="col">
                        <div class="mt-3">
                            <label for="" class="form-label text-light">Book Name</label>
                            <input type="text" placeholder="Book's Name" autocomplete="off" runat="server" class="form-control custom-input" id="BNameTb" />

                        </div>
                    </div>
                    <div class="col">
                        <div class="mt-3">
                            <label for="" class="form-label text-light">Book Price</label>
                            <input type="text" placeholder="Price" autocomplete="off" runat="server" class="form-control custom-input" id="BPriceTb" />

                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <div class="mt-3">
                            <label for="" class="form-label text-light">Quantity</label>
                            <input type="text" placeholder="Quantity" autocomplete="off" runat="server" class="form-control custom-input" id="BQtyTb" />

                        </div>
                    </div>
                    <div class="col">
                        <div class="mt-3">
                            <label for="" class="form-label text-light">Billing Date</label>
                            <input type="datetime" runat="server" class="form-control custom-input" id="DateTb" />

                        </div>
                    </div>
                    <div class="row mt-3 mb-3">
                        <div class="col d-grid">
                            <asp:Button Text="Add to Bill" runat="server" ID="AddToBillBtn" class="btn-warning btn-block btn" OnClick="AddToBillBtn_Click" />
                        </div>
                    </div>
                </div>
                <div class="row my-5">
                    <div class="header-container">
                        <h3 class="header-background">Books List</h3>
                    </div>
                    <div class="col">
                        <asp:GridView ID="BooksList" runat="server" class="table" CellPadding="2" AutoGenerateSelectButton="True" OnSelectedIndexChanged="AuthorsList_SelectedIndexChanged" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" ForeColor="Black" GridLines="None">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle ForeColor="DarkSlateBlue" HorizontalAlign="Center" BackColor="PaleGoldenrod" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                    </div>

                </div>
            </div>
            <div class="col-md-7">
                <div class="header-container">
                    <h3 class="header-background">Client's Bill</h3>
                </div>
                <div class="col">
                    <asp:GridView ID="BillList" runat="server" class="table" CellPadding="2" ForeColor="Black" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="AuthorsList_SelectedIndexChanged" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <div class=" d-grid">
                        <asp:Label runat="server" ID="GrdTotalTb" class="text-color text-center"></asp:Label><br />
                        <asp:Button Text="Print" runat="server" ID="PrintBtn" OnClientClick="PrintBill()" class="btn-warning btn-block btn" OnClick="PrintBtn_Click" />
                    </div>

                </div>
            </div>

        </div>
    </div>
</asp:Content>
