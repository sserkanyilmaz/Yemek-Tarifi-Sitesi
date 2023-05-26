using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TarifOneriDetay : System.Web.UI.Page
{
    SQLSinif bgl = new SQLSinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Tarifid"];
        if(Page.IsPostBack==false)
        {
            SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where Tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextAd.Text = dr[1].ToString();
                TextMalzemeler.Text = dr[2].ToString();
                TextYapilis.Text = dr[3].ToString();
                TextOneren.Text = dr[4].ToString();
                TextOnerenMail.Text = dr[5].ToString();
                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
            bgl.baglanti().Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Güncelleme
        SqlCommand komut = new SqlCommand("update Tbl_Tarifler set TarifDurum=1 where Tarifid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        //Yemegi ana sayfaya ekleme
        SqlCommand komut2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", TextAd.Text);
        komut2.Parameters.AddWithValue("@p2", TextMalzemeler.Text);
        komut2.Parameters.AddWithValue("@p3", TextYapilis.Text);
        komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        //Kategoriyi 1 arttırma
        SqlCommand komut3 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1", bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}