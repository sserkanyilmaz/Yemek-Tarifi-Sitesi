using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YorumDetay : System.Web.UI.Page
{
    SQLSinif bgl = new SQLSinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id=Request.QueryString["Yorumid"];
        if(Page.IsPostBack==false)
        {
            SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.yemekid=Tbl_Yorumlar.yemekid where  Yorumid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while(dr.Read())
            {
                TextAd.Text = dr[0].ToString();
                TextMail.Text = dr[1].ToString();
                TextIcerik.Text = dr[2].ToString();
                TextYemek.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();
        }
        
    }

    protected void ButtonOnayla_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update Tbl_Yorumlar set Yorumicerik=@p1,YorumOnay=@p2 where Yorumid=@p3", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextIcerik.Text);
        komut.Parameters.AddWithValue("@p2", "True");
        komut.Parameters.AddWithValue("@p3", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}