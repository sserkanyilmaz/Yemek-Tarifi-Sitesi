using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Yemekler : System.Web.UI.Page
{
    SQLSinif bgl = new SQLSinif();
    string islem = "";
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];
        islem = Request.QueryString["islem"];

        Panel2.Visible = false;
        Panel4.Visible = false;
        if(Page.IsPostBack==false)
        {   //KATEGORİ LİSTESİ
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2=komut2.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }
        //YEMEK LİSTESİ
        SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();

        if(islem=="sil")
        {
            SqlCommand komutSil = new SqlCommand("Delete from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
            komutSil.Parameters.AddWithValue("@p1", id);
            komutSil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void Button_ekle_Click(object sender, EventArgs e)
    {
        //YEMEK EKLEME  
        SqlCommand komutekle = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
        komutekle.Parameters.AddWithValue("@p1", TextBox1.Text);
        komutekle.Parameters.AddWithValue("@p2", TextBox2.Text);
        komutekle.Parameters.AddWithValue("@p3", TextBox3.Text);
        komutekle.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komutekle.ExecuteNonQuery();
        bgl.baglanti().Close();
        //KATEGORİ SAYISINI 1 ARTTIRMA
        SqlCommand komutArttir = new SqlCommand("update Tbl_kategoriler set KategoriAdet=KategoriAdet+1 where kategoriid=@p1 ", bgl.baglanti());
        komutArttir.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komutArttir.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}