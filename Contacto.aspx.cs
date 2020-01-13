using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net.Mail;

public partial class Contacto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string from = Request.Form["contact_email"].ToString();
            string nombre = Request.Form["contact_name"].ToString();
            string personas = Request.Form["contact_personas"].ToString();
            string extra = Request.Form["contact_extra"].ToString();
            string fecha = Request.Form["contact_fecha"].ToString();
            string hora = Request.Form["contact_hora"].ToString();

            //creamos el subject
            //string subject = nombre + " Fecha: " + fecha + " Hora: " + hora + " Personas: " + (int.Parse(personas) + int.Parse(extra)).ToString();
            string subject = "La Esquina, reservación a nombre de " + nombre;

            //creamos el contenido / cuerpo del correo
            string mensaje = nombre + "<h1> Fecha: </h1>" + fecha + " Hora: " + hora + " Personas: " + (int.Parse(personas) + int.Parse(extra)).ToString();
            //string mensaje = 


                                        //INVOCAR FUNCIÓN
                                        string resultado = sendGmail(from, subject, mensaje);
            lblResultado.Text = resultado;
        }
    }

        private string sendGmail(string from, string subject, string mensaje)
    {
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true; //Socket Secure Layer https
        client.Host = "smtp.gmail.com";
        client.Port = 587;

        //Nos autenticamos en el SMTP
        System.Net.NetworkCredential credencials = new System.Net.NetworkCredential("rachel.palomeque@gmail.com", "vowkwqmotfjpodem");
        client.UseDefaultCredentials = false;
        client.Credentials = credencials;

        //Creamos nuestro correo
        MailMessage oMail = new MailMessage();
        oMail.From = new MailAddress(from);
        oMail.To.Add(new MailAddress("rachel.palomeque@gmail.com")); //gcmedina@gmail.com
        oMail.Subject = subject;
        oMail.IsBodyHtml = true;
        oMail.Priority = MailPriority.Low
            ;
        oMail.Body = mensaje;

        try
        {
            client.Send(oMail);
            return "Correo enviado";
        }
        catch (Exception ex)
        {
            return "Error en el envío. " + ex.Message;
        }
    } // fin de sendGmail

    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Default.aspx?Id=2");
    }
}