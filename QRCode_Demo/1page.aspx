﻿<%@ Page Language="C#" AutoEventWireup="true" Trace="true" CodeFile="1page.aspx.cs" Inherits="_1page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body >
    <form id="form1" runat="server">
        <div>

            <asp:Image ID="Image1" runat="server" ImageAlign="Left" ImageUrl="~/Image/tr200t.gif" Width="300px" />

            </div>
        <div class="login">
            <asp:Label ID="Label1" runat="server" Font-Size="Large"  Text="QR Code Yonetici Girisi" Height="55px" Width="349px"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="E-Mail:"></asp:Label>
            <asp:TextBox ID="user_id" runat="server" placeholder="Username"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Sifre:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="giris_butonu" runat="server" PostBackUrl="~/Ana_Sayfa.aspx" Text="GIRIS" />
            <br />
            <br />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Beni Hatirla." />
        </div>
            

            

        
        
        
            
        
        
        
        
        
        
    </form>
</body>
</html>
