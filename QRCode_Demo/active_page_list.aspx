<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="active_page_list.aspx.cs" Inherits="QRCode_Demo.active_page_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css">
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
        <div>
            <h3>Aktif Olan Listeler</h3>
        </div>
        
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/QRCode.aspx">Bilgisayar Mühendisligine Giriş</asp:LinkButton>
            <div>
<asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Numbered">
    <asp:ListItem>000000</asp:ListItem>
    <asp:ListItem>111111</asp:ListItem>
        </asp:BulletedList>
            </div>
        </div>
        
    </form>
</body>
    <footer class="footsy">
    <div class="row">
     <h4>Listeler öğrenci numaralarına göre oluşturulmuştur.</h4>
    </div>
  </footer>
</html>
