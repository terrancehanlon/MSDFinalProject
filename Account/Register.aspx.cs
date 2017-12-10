using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using Assignment_3B;

public partial class Account_Register : Page
{
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        var manager = new UserManager();
        var user = new ApplicationUser() { UserName = UserName.Text };
        IdentityResult result = manager.Create(user, Password.Text);
        if (result.Succeeded)
        {
            // add to database
            AppointmentDBEntities2 dbcon = new AppointmentDBEntities2();
            PatientTable myPatients = new PatientTable();

            myPatients.PatientUserName = UserName.Text;

            dbcon.PatientTables.Add(myPatients);
            dbcon.SaveChanges();

            IdentityHelper.SignIn(manager, user, isPersistent: false);
            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        }
        else
        {
            ErrorMessage.Text = result.Errors.FirstOrDefault();
        }
    }
}