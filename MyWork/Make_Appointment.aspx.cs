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
        SuccessLabel.Visible = false;
        // Database reference
        AppointmentDBEntities3 dbcon = new AppointmentDBEntities3();
        AppointmentTable myAppointment = new AppointmentTable();

        // Set the time of appointment
        int hour = Convert.ToInt32(HourBox.Text);
        int min = Convert.ToInt32(MinuteBox.Text);
        TimeSpan myTime = new TimeSpan(hour, min, 0);
        DateTime myDate = Convert.ToDateTime(DateBox.Text);


        int docID = Convert.ToInt32(DoctorList.SelectedValue);


        // check for conflicting schedules
        foreach (var appointment in dbcon.AppointmentTables.Where(appointment => appointment.DoctorID == docID))
        {
            if ((appointment.AppTime == myTime) && (appointment.AppDate == myDate))
            {
                ErrorLabel.Visible = true;
                return;
            }
        }

        ErrorLabel.Visible = false;

        // add data to the myAppointment        
        myAppointment.Reason = ReasonBox.Text;
        myAppointment.AppDate = myDate;
        myAppointment.AppTime = myTime;
        myAppointment.DoctorID = docID;
        myAppointment.City = CityBox.Text;


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

        SuccessLabel.Visible = true;
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}