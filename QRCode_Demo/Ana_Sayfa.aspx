<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ana_Sayfa.aspx.cs" Inherits="Ana_Sayfa" %>

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
      <li><a class="active" href="#home">Home</a></li>
      <li><a href="#news">News</a></li>
      <li><a href="#contact">Contact</a></li>
      <li><a href="#about">About</a></li>
      <li class="topnav-right"><a href="#signup">Sign In</a></li>
      <li class="topnav-right"><a href="#signup">Sign Up</a></li>
      <li class="dropdownIcon"><a href="javascript:void(0);" onclick="dropdownMenu()">&#9776;</a></li>
    </ul>
  </nav>
        <div class="col-10">

            <br />

            <asp:Label ID="dersler" runat="server" Font-Size="X-Large"  Text="QR CODE OLUSTURULABILECEK DERSLER" ClientIDMode="Static"></asp:Label>
            <br />
            <br />
            <asp:BulletedList ID="BulletedList1" runat="server" Height="36px" style="margin-left: 16px" Width="452px">
                <asp:ListItem>Bilgisayar Muhendisligine Giris</asp:ListItem>
            </asp:BulletedList>
            <asp:CheckBox ID="CheckBox1"   runat="server" Text="1.Ogr" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox2"   runat="server" ClientIDMode="Static" CssClass="checkbox" Text="2.Ogr" />
            <br />
            <br />
            <asp:Button ID="qr_olustur" runat="server" Text="QR Olustur" />
            <br />
            <br />
            <br />

        </div>
  
  
  <footer class="footsy">
    <div class="row">
      <div class="col-3 mobileStack">
        <h1>Company</h1>
        <ul>
          <li>About</li>
          <li>Blogs</li>
          <li>Careers</li>
        </ul>
      </div>
      <div class="col-3 mobileStack">
        <h1>Company</h1>
        <ul>
          <li>About</li>
          <li>Blogs</li>
          <li>Careers</li>
        </ul>
      </div>
      <div class="col-3 mobileStack">
        <h1>Company</h1>
        <ul>
          <li>About</li>
          <li>Blogs</li>
          <li>Careers</li>
        </ul>
      </div>
      <div class="col-3 mobileStack">
        <h1>Company</h1>
        <ul>
          <li>About</li>
          <li>Blogs</li>
          <li>Careers</li>
        </ul>
      </div>
    </div>
  </footer>

  
  
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
        </form>
</body>
</html>
