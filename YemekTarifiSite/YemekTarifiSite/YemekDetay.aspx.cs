using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YemekDetay : System.Web.UI.Page
{
    SQLSinif bgl = new SQLSinif();
    string yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["yemekid"];
        SqlCommand komut = new SqlCommand("select YemekAd from Tbl_Yemekler where yemekid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", yemekid);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            Label3.Text = dr[0].ToString();
        }
        bgl.baglanti().Close();
        //yorumları listele
        SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where yemekid=@p2", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p2", yemekid);
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["yemekid"];
        SqlCommand komutKaydet = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,Yorumicerik,Yemekid,YorumMail) values (@t1,@t2,@t3,@t4)", bgl.baglanti());
        komutKaydet.Parameters.AddWithValue("@t1", TextIsim.Text);
        komutKaydet.Parameters.AddWithValue("@t2", TextYorum.Text);
        komutKaydet.Parameters.AddWithValue("@t3", yemekid);
        komutKaydet.Parameters.AddWithValue("@t4", TextMail.Text);
        komutKaydet.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Yorumunuz alınmıştır");
    }
}