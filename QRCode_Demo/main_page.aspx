<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main_page.aspx.cs" Inherits="QRCode_Demo.main_page" %>
<%@ PreviousPageType VirtualPath="~/logInpage.aspx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
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
            <br />
            <br />

            <asp:Label ID="IsimLabel" runat="server" CssClass="checkbox"></asp:Label>
            
            <br />
            <br />
        </div>
        <div >

            
            <br />

            <asp:Label ID="dersler" runat="server" Font-Size="X-Large"  Text="QR CODE OLUSTURULABILECEK DERSLER" ClientIDMode="Static"></asp:Label>
            <br />
            <br />
            
            <asp:CheckBox ID="DersCheckBox1" runat="server" />
            <br />
            <br />
            <asp:Button ID="qr_olustur" runat="server" Text="QR Olustur" OnClick="qr_olustur_Click" />

        </div>

  <script>
      
    function dropdownMenu() {
      var x = document.getElementById("dropdownClick");
      if (x.className === "topnav") {
        x.className += " responsive";
        /*change topnav to topnav.responsive*/
      } else {
        x.className = "topnav";
      }
      }

  </script>
        <p>
            <asp:Label ID="DersUyari" runat="server" CssClass="checkbox"></asp:Label>
        </p>
        </form>
</body>
</html>
