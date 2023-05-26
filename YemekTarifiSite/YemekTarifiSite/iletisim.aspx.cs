using System;
using System.Data.SqlClient;

public partial class iletisim : System.Web.UI.Page
{
    SQLSinif bgl = new SQLSinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Gonder_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar (MesajGonderen,MesajBaslik,MesajMail,Mesajicerik) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextAdSoyad.Text);
        komut.Parameters.AddWithValue("@p2", TextMail.Text);
        komut.Parameters.AddWithValue("@p3", TextMesajKonu.Text);
        komut.Parameters.AddWithValue("@p4", TextMesajIcerik.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Yorumunuz alınmıştır");

    }
}