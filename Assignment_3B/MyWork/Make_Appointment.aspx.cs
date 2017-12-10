using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

public partial class MyWork_Appointments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        DateBox.Text = Calendar1.SelectedDate.ToShortDateString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        AppointmentDBEntities2 dbcon = new AppointmentDBEntities2();


        int hour = Convert.ToInt32(HourBox.Text);
        int min = Convert.ToInt32(MinuteBox.Text);

        AppointmentTable myAppointment = new AppointmentTable();
        //DoctorTable doctorTable = new DoctorTable();

        // add data to the myAppointment
        
        myAppointment.Reason = ReasonBox.Text;
        myAppointment.AppDate = Convert.ToDateTime(DateBox.Text);
        myAppointment.AppTime = new TimeSpan(hour, min, 0);
        myAppointment.DoctorID = Convert.ToInt32(DoctorList.SelectedValue);

        // find department ID for selected doctor
        int departmentID = 0;
        int doctorID = Convert.ToInt32(DoctorList.SelectedValue);

        foreach (var doctor in dbcon.DoctorTables.Where(doctor => doctor.DoctorId == doctorID))
        {
            departmentID = doctor.DepartmentID;
            myAppointment.DepartmentID = doctor.DepartmentID;
        }

        // find hospital ID for department

        foreach (var department in dbcon.DepartmentTables.Where(department => department.DepartmentId == departmentID))
        {
            myAppointment.HospitalID = department.HospitalID;
        }


        
        // add myAppointment to the table 

        dbcon.AppointmentTables.Add(myAppointment);

        dbcon.SaveChanges();

        // clear
        CityBox.Text = "";
        DateBox.Text = "";
        HourBox.Text = "";
        MinuteBox.Text = "";
        ReasonBox.Text = "";
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}