<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="active_page_list.aspx.cs" Inherits="QRCode_Demo.active_page_list" %>

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
            <asp:Label ID="AktifDersLabel" Font-Size="Large" runat="server"></asp:Label>
            <asp:BulletedList ID="BulletedList1" Font-Size="Medium" runat="server">
                <asp:ListItem>31322</asp:ListItem>
                <asp:ListItem>314054</asp:ListItem>
            </asp:BulletedList>
        </div>
        
        <div>

            <asp:Button ID="listrefresh" runat="server" OnClick="listrefresh_Click" Text="Listeyi Yenile" />

        </div>
        
    </form>
</body>
</html>
