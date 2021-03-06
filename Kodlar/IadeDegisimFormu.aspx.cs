﻿using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IadeDegisimFormu : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Yol.ECon);
    cls_IadeDegisim Iade = new cls_IadeDegisim();
    private static string GelenID, Adsoyad;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["E_ticaretim"] != null)
            {
                string[] Gelenler = (string[])Session["E_ticaretim"];
                GelenID = Gelenler[0].ToString();
                Adsoyad = Gelenler[1].ToString();
                if (!IsPostBack)
                {
                    Siparis_Numaralari_Gel(GelenID);
                }
            }
            else
            {
                Response.Redirect("~/Giris.aspx", false);
            }
        }
        catch (Exception)
        {
            Response.Redirect("Hata.aspx");
        }
        finally
        {
            con.Close();
            con.Dispose();
            SqlConnection.ClearPool(con);
        }
    }
    private void Siparis_Numaralari_Gel(string GelenUYe)
    {
        DataTable dt = cls_DataAdaptore.Siparis_Getir(GelenUYe);
        if (dt.Rows.Count != 0)
        {
            DataRow dr = dt.NewRow();
            dr["SiparisNoFiyat"] = "Lütfen Sipariş Numarasını Seçiniz";
            dt.Rows.InsertAt(dr, 0);
            SiparisNoDrop.DataSource = dt;
            SiparisNoDrop.DataTextField = "SiparisNoFiyat";
            SiparisNoDrop.DataValueField = "E_SiparisID";
            SiparisNoDrop.DataBind();
            panelsepet.Visible = true;
            HataDiv.Visible = false;
        }
        else
        {
            panelsepet.Visible = false;
            HataDiv.Visible = true;
        }
    }
    protected void GonderBtn_Click(object sender, EventArgs e)
    {
        try
        {
            if (Iade.Iade_Degisim_Kayit(BankaAdiBox.Text, IBANBox.Text, IadeNedeniDrop.SelectedItem.Text, AciklamaBox.Text, SiparisNoDrop.SelectedValue, GelenID) == true)
            {
                Iade_MailGonder(Ortak.SiteAdresi, Adsoyad, GelenID, SiparisNoDrop.SelectedItem.Text, BankaAdiBox.Text, IBANBox.Text, IadeNedeniDrop.SelectedItem.Text, AciklamaBox.Text, DateTime.Now.ToString());
                panelsepet.Visible = false;
                Islem_Tamam.Visible = true;
            }
            else
            {
                panelsepet.Visible = false;
                HataDiv.Visible = true;
            }
        }
        catch (Exception)
        {
            Response.Redirect("Hata.aspx");
        }
        finally
        {
            con.Close();
            con.Dispose();
            SqlConnection.ClearPool(con);
        }
    }
    private void Iade_MailGonder(string _SiteAdi, string _AdSoyad, string _UyeNo, string _SiparisNo, string _BankaAdi, string _IBAN, string _IadeNedeni, string _Aciklama, string _Tarih)
    {
        string Logo = Ortak.SiteAdresi_http + "/Image/logo.jpg";
        MailDefinition mailTarifi = new MailDefinition();
        mailTarifi.BodyFileName = "~/EpostaSablon/EPosta_IadeDegisimFormu.html"; //Şablon 
        mailTarifi.From = Ortak.Eposta;
        ListDictionary degistirmeListesi = new ListDictionary();
        degistirmeListesi.Add("<%SiteAdi%>", _SiteAdi);
        degistirmeListesi.Add("<%Logo%>", Logo);
        degistirmeListesi.Add("<%AdSoyad%>", _AdSoyad);
        degistirmeListesi.Add("<%UyeNo%>", _UyeNo);
        degistirmeListesi.Add("<%SiparisNo%>", _SiparisNo);
        degistirmeListesi.Add("<%BankaAdi%>", _BankaAdi);
        degistirmeListesi.Add("<%IBAN%>", _IBAN);
        degistirmeListesi.Add("<%IadeNedeni%>", _IadeNedeni);
        degistirmeListesi.Add("<%Aciklama%>", _Aciklama);
        degistirmeListesi.Add("<%Tarih%>", _Tarih);
        string mailTo = Ortak.EPosta_Gidicek_Adresler[0].ToString();

        MailMessage mailMesaj = mailTarifi.CreateMailMessage(mailTo, degistirmeListesi, this);
        mailMesaj.From = new MailAddress(Ortak.Eposta, Ortak.E_Ticaret_SiteAdi);
        mailMesaj.IsBodyHtml = true;
        mailMesaj.Subject = Ortak.SiteAdresiKısa + " | Iade Değişim Formu";
        for (int i = 1; i < Ortak.EPosta_Gidicek_Adresler.Length; i++)
        {
            mailMesaj.Bcc.Add(new MailAddress(Ortak.EPosta_Gidicek_Adresler[i].ToString()));
        }
        //buradan sonrasını değiştirmedim, bildiğiniz gibi
        SmtpClient smtp = new SmtpClient(Ortak.MailServer, 587);
        smtp.Credentials = new NetworkCredential(Ortak.Eposta, Ortak.Sifre);
        smtp.Send(mailMesaj);
    }
}