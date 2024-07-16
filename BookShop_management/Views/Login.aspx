<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BookShop_management.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/Lib/css/bootstrap.min.css" />
    <style>
        body {
            background-image: url('../../Assets/Images/backs.jpg');
            background-size: cover;
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
            background-color: darkred;
            color: white;
        }

        .text-color {
            color: white;
            font-weight: bolder;
            font-size: large;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row mt-5 mb-5">
        </div>
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                <form id="form1" runat="server">
                    <div>
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-8">
                                <img src="../../Assets/Images/logo.png" />

                            </div>
                            <div class="row">
                                <div class="col-md-5"></div>
                                <div class="col-md-8">

                                    <h3 class="text-light">Log-in</h3>
                                </div>

                            </div>
                            <div class="mt-3">
                                <label for="" class="form-label text-light">User Name</label>
                                <input type="email" placeholder="Your Email Here" autocomplete="off" runat="server" class="form-control custom-input" id="unameTb" />

                            </div>
                            <div class="mt-3">
                                <label for="" class="form-label text-light">Password</label>
                                <input type="password" placeholder="Password" autocomplete="off" runat="server" class="form-control custom-input" id="PasswordTb" />

                            </div>
                            <div class="mt-3 d-grid">
                                <asp:Label runat="server" ID="ErrMsg" class="text-color text-center"></asp:Label><br />
                                <asp:Button Text="Login" runat="server" class="btn-brown" ID="LoginBtn" OnClick="LoginBtn_Click" />

                            </div>
                </form>

            </div>
            <div class="col-md-4">
            </div>

        </div>

    </div>

</body>
</html>
