using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

public partial class MyWork_Email : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        AppointmentDBEntities2 dbcon = new AppointmentDBEntities2();

        EmailTable email = new EmailTable();

        email.EmailText = messageTextBox.Text;
        email.TO = toTextBox.Text;
        email.FROM = "username";

        dbcon.EmailTables.Add(email);
        dbcon.SaveChanges();

        messageTextBox.Text = "";
        toTextBox.Text = "";

        sentLabel.Text = "Message Sent Successfully";
        sentLabel.Visible = true;


        
    }
}