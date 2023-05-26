using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KategoriDetay : System.Web.UI.Page
{
    SQLSinif bgl = new SQLSinif();
    string kategoriid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        kategoriid = Request.QueryString["yemekid"];
        SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where Kategoriid=@p2", bgl.baglanti());
        komut.Parameters.AddWithValue("@p2", kategoriid);
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
    }
}