using QRCoder;
using System;
using System.Drawing;
using System.IO;
using FireSharp.Config;
using FireSharp.Response;
using FireSharp.Interfaces;

namespace QRCode_Demo
{
    public partial class QRCode : System.Web.UI.Page
    {
        public logInpage lpage;
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "Ds19cBaQHlqdIY4UmJWjTHBJ287FcivkFpaO7szO",
            BasePath = "https://bitirme-75598.firebaseio.com/"
        };
        IFirebaseClient client;
        public static Lessons lesUser;
        public static string denemeders;
        protected void Page_Load(object sender, EventArgs e)
        {
            denemeders = logInpage.deneme.Dersler;
            client = new FireSharp.FirebaseClient(config);
            FirebaseResponse resp = client.Get(@"Dersler/" + denemeders);
            lesUser = resp.ResultAs<Lessons>();
        }
        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            
            
            DateTime aDate = DateTime.Now;
            string code = txtQRCode.Text +" " + aDate;
            var data = new Lessons
            {
                ders = lesUser.ders,
                Kredi = lesUser.Kredi,
                derskodu = lesUser.derskodu,
                QrVal = code
            };
            FirebaseResponse response = client.Update(@"Dersler/" + denemeders, data);
            QRCodeGenerator qrOlustur = new QRCodeGenerator();
            QRCodeGenerator.QRCode qrCode = qrOlustur.CreateQrCode(code, QRCodeGenerator.ECCLevel.Q);
            System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
            imgBarCode.Height = 250;
            imgBarCode.Width = 250;
            using (Bitmap bitMap = qrCode.GetGraphic(20))
            {
                using (MemoryStream ms = new MemoryStream())
                {
                    bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    byte[] byteImage = ms.ToArray();
                    imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                }
                PlaceHolder1.Controls.Add(imgBarCode);
            }
        }
    }
}