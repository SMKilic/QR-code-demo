<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QRCode.aspx.cs" Inherits="QRCode_Demo.QRCode" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <nav>
    <ul class="topnav" id="dropdownClick">
      <li><a class="active" href="main_page.aspx">Ana Sayfa</a></li>
      <li><a href="#news">Dersler</a></li>
      <li><a href="active_page_list.aspx">Aktif Liste</a></li>
      <li class="topnav-right"><a href="logInpage.aspx">Çıkış</a></li>
      <li class="dropdownIcon"><a href="javascript:void(0);" onclick="dropdownMenu()">&#9776;</a></li>
    </ul>
  </nav>
        <div class="container">
            <h5>QR Code Sayfası</h5>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <p>Ders ile ilgili bilgileri giriniz:</p>
                        <div class="input-group">
                            <asp:TextBox ID="txtQRCode" runat="server" CssClass="form-control"></asp:TextBox>
                            <div class="input-group-prepend">
                                <asp:Button ID="btnGenerate" runat="server" CssClass="btn btn-secondary" Text="Olustur" OnClick="btnGenerate_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
