using System;
using QRCoder;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;

namespace Frigo
{
    public partial class Qr_Code_Show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Nome_Prodotto = Request.QueryString["Nome_Prodotto"];
            string Unita = Request.QueryString["Unita"];
            string Peso = Request.QueryString["Peso"];
            string Quantitativo = Request.QueryString["Quantitativo"];
            string Data_Giorno = Request.QueryString["Data_Giorno"];
            string Data_Mese = Request.QueryString["Data_Mese"];
            string Data_Anno = Request.QueryString["Data_Anno"];
            string Provenienza = Request.QueryString["Provenienza"];
            string Marca = Request.QueryString["Marca"];
            string Allergeni = Request.QueryString["Allergeni"];

            string testo = null;
            testo += "Frigo={Nome_Prodotto:'" + Nome_Prodotto + "',";
            testo += "Peso:'" + Unita + "','"+ Peso + "',";
            testo += "Quantitativo:'" + Quantitativo + "',";
            testo += "Data:'" + Data_Giorno + "-" + Data_Mese + "-" + Data_Anno + "',";
            testo += "Provenienza:'" + Provenienza + "',";
            testo += "Marca:'" + Marca + "',";
            testo += "Allergeni:";
            if (Allergeni != string.Empty)
            {
                string[] alls = Allergeni.Split(Environment.NewLine.ToCharArray(), StringSplitOptions.RemoveEmptyEntries);
                foreach (string all in alls)
                    testo += "'" + all + "',";
                testo = testo.Substring(0, testo.Length - 1);
            }
            else
                testo += "''";
            testo += "}";
            
            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            QRCodeData qRCodeData = qrGenerator.CreateQrCode(testo, QRCodeGenerator.ECCLevel.Q);
            QRCode qrCode = new QRCode(qRCodeData);
            Bitmap image = qrCode.GetGraphic(20);
            image.Save(Server.MapPath(@"~/Immagini/file.jpg"), ImageFormat.Jpeg);
            imgQR.ImageUrl = "~/Immagini/file.jpg";
        }
    }
}