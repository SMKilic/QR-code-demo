using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FireSharp.Config;
using FireSharp.Response;
using FireSharp.Interfaces;

namespace QRCode_Demo
{
    public partial class main_page : System.Web.UI.Page
    {
        public logInpage lpage;
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "Ds19cBaQHlqdIY4UmJWjTHBJ287FcivkFpaO7szO",
            BasePath = "https://bitirme-75598.firebaseio.com/"
        };
        IFirebaseClient client;
        protected void Page_Load(object sender, EventArgs e)
        {
            string newAdmin = logInpage.deneme.ID;
            client = new FireSharp.FirebaseClient(config);
            FirebaseResponse resp = client.Get(@"Akademisyen/" + newAdmin);
            AdminUser respUser = resp.ResultAs<AdminUser>();
            DersCheckBox1.Text = respUser.Dersler;
            String adminName = respUser.Isim;
            IsimLabel.Text = ("Hosgeldiniz " + adminName);
        }

        protected void qr_olustur_Click(object sender, EventArgs e)
        {
            if (DersCheckBox1.Checked == true)
            {
                Response.Redirect("QRCode.aspx");
            }
            else
                DersUyari.Text = "Lutfen Bir Ders Seciniz!";
                //Response.Write("<script>alert(Lutfen Bir Ders Seciniz!)</script>");
        }

    }
}