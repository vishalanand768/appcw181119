using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace appcw181119
{
    public partial class cw1811 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            bindgrid();
        }

        protected void Submit_btn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into cw181119(F_Name,L_Name) values('"+txtf_name.Text+"','"+txtl_name.Text+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            bindgrid();
        }
        public void bindgrid ()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from cw181119", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();

            grd.DataSource = (dt);
            grd.DataBind();
        }
        protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from cw181119 where Empid='" + e.CommandArgument+ "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            bindgrid();
        }
    }
}