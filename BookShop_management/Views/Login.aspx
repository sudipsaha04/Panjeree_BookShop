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
        <input type="email" placeholder="Your Email Here" autocomplete="off" runat="server" class="form-control" id="unameTb"/>

    </div>
                <div class="mt-3">
    <label for=""class="form-label text-light">Password</label>
    <input type="password" placeholder="Password" autocomplete="off" runat="server" class="form-control" id="PasswordTb"/>

     </div>
                 <div class="mt-3 d-grid">
                      <asp:Label runat="server" ID="ErrMsg" class="text-danger text-center"></asp:Label><br />
    <asp:Button Text="Login" runat="server" class=  "btn-secondary" ID="LoginBtn" OnClick="LoginBtn_Click" />

     </div>
     </form>

         </div>
            <div class="col-md-4"> 

</div>
      
</div>

    </div>
    
</body>
</html>
