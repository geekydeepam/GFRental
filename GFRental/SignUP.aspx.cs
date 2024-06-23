using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GFRental
{
    public partial class SignUP : System.Web.UI.Page
    {
        string strcon = "server=.;database=rentalGF;integrated security=true;";
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Uname=TextBox1.Text;
            string Pass=TextBox2.Text;
            long Mob=Convert.ToInt64(TextBox4.Text);
            string Email=TextBox5.Text;
            int age=Convert.ToInt32(TextBox6.Text);
            

            con=new SqlConnection(strcon);
            string qr = "insert into Users values(@uname,@pass,@mob,@email,@age)";
            SqlCommand cmd = new SqlCommand(qr,con);
            cmd.Parameters.AddWithValue("@uname", Uname);
            cmd.Parameters.AddWithValue("@pass", Pass);
            cmd.Parameters.AddWithValue("@mob", Mob);
            cmd.Parameters.AddWithValue("@email", Email);
            cmd.Parameters.AddWithValue("@age", age);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();





        }
    }
}