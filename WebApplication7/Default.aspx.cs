using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication7.DataSet2TableAdapters;

namespace WebApplication7
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //DataSet2 dt2 = new DataSet2();
            DataSet2TableAdapters.usermainTableAdapter ad = new usermainTableAdapter();
            //ad.FillBy3(null, TextBox2.Text);
            DataSet2.usermainDataTable tb = new DataSet2.usermainDataTable();
                tb =ad.GetDataBy5(TextBox1.Text ,TextBox2.Text);
            if (tb.Count <= 0) return;
            Label1.Text = tb[0].name;
            Label2.Text = tb[0].id.ToString(); ;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataSet2TableAdapters.usermainTableAdapter ad = new usermainTableAdapter();
            ad.Insert(TextBox3.Text,Convert.ToInt32(TextBox4.Text),TextBox5.Text,TextBox6.Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Class1");
        }
    }
}