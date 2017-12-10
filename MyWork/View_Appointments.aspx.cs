using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

public partial class MyWork_View_Appointments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        AppointmentDBEntities2 dbcon = new AppointmentDBEntities2();

        dbcon.AppointmentTables.Load();

        // select item to delete
        AppointmentTable abc = (from x in dbcon.AppointmentTables.Local
                                where x.AppointmentId ==
                                Convert.ToInt32(RemoveBox.Text)
                                select x).First();

        // delete obj
        dbcon.AppointmentTables.Remove(abc);
        dbcon.SaveChanges();
        RemoveBox.Text = "";
    }
}