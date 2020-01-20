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

    public partial class logInpage : System.Web.UI.Page
    {
        public main_page mpage;
        public QRCode qpage;
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "Ds19cBaQHlqdIY4UmJWjTHBJ287FcivkFpaO7szO",
            BasePath ="https://bitirme-75598.firebaseio.com/"
        };
        IFirebaseClient client;
        protected void Page_Load(object sender, EventArgs e)
        {
            client = new FireSharp.FirebaseClient(config);
            if (client != null)
            {
                Response.Write("Baglanti Yapildi!\n");
            }
            mpage = new main_page();
            qpage = new QRCode();
            mpage.lpage = this;
            qpage.lpage = this;
        }
        public static AdminUser deneme;
        protected void giris_butonu_Click(object sender, EventArgs e)
        {
            if(string.IsNullOrWhiteSpace(user_id.Text) || string.IsNullOrWhiteSpace(Convert.ToString(password.TextMode)))
            {
                Response.Write("\nKullanici Adi veya Sifrenizi girmediniz!");
            }
            else
            {
                FirebaseResponse resp = client.Get(@"Akademisyen/" + user_id.Text);
                AdminUser respUser = resp.ResultAs<AdminUser>();//datadan verleri aliniyor
                AdminUser curUser = new AdminUser()//o andaki girilen degerler
                {
                    ID = user_id.Text,
                    Sifre = password.Text
                };
                deneme = respUser;
                if (curUser.ID == respUser.ID && curUser.Sifre == respUser.Sifre)
                {
                    Response.Redirect("main_page.aspx");
                }
                else 
                {
                    Response.Write("Kullanici adi veya sifreniz yanlis!");
                }
            }
            
           
        }
        
    }
}