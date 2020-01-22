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
    public partial class active_page_list : System.Web.UI.Page
    {
        //GridView GridView = new GridView();
        Lessons lessons = new Lessons();
        public logInpage lpage;
        public static string denemeders;
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "Ds19cBaQHlqdIY4UmJWjTHBJ287FcivkFpaO7szO",
            BasePath = "https://bitirme-75598.firebaseio.com/"
        };
        IFirebaseClient client;
        protected void Page_Load(object sender, EventArgs e)
        {
            denemeders = logInpage.deneme.Dersler;
            AktifDersLabel.Text = denemeders + " dersi yoklama dersi:";
            client = new FireSharp.FirebaseClient(config);
        }

        protected void listrefresh_Click(object sender, EventArgs e)
        {

        }
    }
}