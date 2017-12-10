using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyWork_PatientSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        AppointmentDBEntities2 dbcon = new AppointmentDBEntities2();
        PatientTable myPatients = new PatientTable();

        foreach(var x in dbcon.PatientTables.Where(x => x.PatientUserName.Equals(TextBox1.Text)))
        {
            TextBox2.Text = x.PatientUserName;
        }
    }
}