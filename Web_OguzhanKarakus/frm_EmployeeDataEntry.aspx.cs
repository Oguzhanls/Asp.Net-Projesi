using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_OguzhanKarakus
{
    public partial class frm_EmployeeDataEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Empl_FName"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["Empl_LName"].DefaultValue = TextBox2.Text;
            SqlDataSource1.InsertParameters["Gender_ID"].DefaultValue = RadioButtonList1.SelectedValue;
            SqlDataSource1.InsertParameters["Title_ID"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource1.InsertParameters["Dept_ID"].DefaultValue = DropDownList2.SelectedValue;
            SqlDataSource1.InsertParameters["Empl_BDate"].DefaultValue = TextBox3.Text;
            SqlDataSource1.InsertParameters["Empl_Start_Date"].DefaultValue = TextBox4.Text;
            SqlDataSource1.InsertParameters["Empl_Cell"].DefaultValue = TextBox5.Text;
            SqlDataSource1.InsertParameters["Empl_Phone"].DefaultValue = TextBox6.Text;
            SqlDataSource1.InsertParameters["Empl_Email"].DefaultValue = TextBox7.Text;
            SqlDataSource1.InsertParameters["Empl_Address"].DefaultValue = TextBox8.Text;
            SqlDataSource1.InsertParameters["Empl_City"].DefaultValue = DropDownList3.SelectedValue;
            SqlDataSource1.InsertParameters["Empl_Province"].DefaultValue = DropDownList4.SelectedValue;

            bool d = false;
            if (CheckBox1.Checked == true)
            {
                d = true;
            }
            SqlDataSource1.InsertParameters["Is_Empl_Active"].DefaultValue = d.ToString();
            int s = SqlDataSource1.Insert();
            if (s > 0)
            {
                Label1.Text = "Yeni Personel Bilgisi: <b>" + TextBox1.Text + "</b><p>Başarı ile Eklendi";
                Label1.Visible = true;
            }
            else
                Label1.Text = "Yeni Personel Kaydı Başarısız. Verilerinizi Kontrol ettikten sonra Tekrar deneyiniz";
            Label1.Visible = true;




        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forms.aspx");
        }
    }
}