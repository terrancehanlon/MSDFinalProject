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
        NameBox.Text = "";
        AppointmentDBEntities3 dbcon = new AppointmentDBEntities3();
        PatientTable myPatients = new PatientTable();

        int myID = Convert.ToInt32(IDBox.Text);

        foreach(var x in dbcon.PatientTables.Where(x => x.PatientID.Equals(myID)))
        {
            NameBox.Text = x.PatientUserName;
        }
    }

    protected void IDBox_TextChanged(object sender, EventArgs e)
    {

    }
}