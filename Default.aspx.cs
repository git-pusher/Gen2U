using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;//leer el web.config
using System.IO;//entrada y salida, in / out
using System.Text;
using System.Net;
using System.Xml;
using System.Xml.Xsl;

public partial class _Default : System.Web.UI.Page
{
    public string TipoMenu = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        //hacemos un request del tipo de menú que se requiere desplegar
        if (Request.QueryString["Id"]==null)
        //Request.Form["Id"] para POST
        {
            //Quiere decir que ni url es home
            TipoMenu = "0";//Despliego la pagina Home
        }
        else
        {
            //MI URL ES DEFAULT.ASPX?ID=X
            TipoMenu = Request.QueryString["Id"];
            //DESPLIEGO LA PAGINA CORRESPONDIENTE AK ID RECIBIDO
        }
        //INSERTAR CODIGO DE TRANFORMACION AQUI
        TransformaXML();

    }//DEL PAGE LOAD
    private void TransformaXML()
    {
        //definimos el metodo para tranformar el xml con el xslt
        //de
        string xmlPath = ConfigurationManager.AppSettings["FileServer"].ToString() + "xml/Menu.xml";
        string xslPath = ConfigurationManager.AppSettings["FileServer"].ToString() + "xslt/template.xslt";
        XmlTextReader trMenu = new XmlTextReader(xmlPath);
        //crear las credenciales del usuario para poder cargar ek xslt
        XmlUrlResolver resolver = new XmlUrlResolver();
        resolver.Credentials = CredentialCache.DefaultCredentials;
        //crear la ocnfiguracion para poder
        XsltSettings settings = new XsltSettings(true, true);


        XslCompiledTransform xslt = new XslCompiledTransform();
        xslt.Load(xslPath,settings,resolver);

        StringBuilder sBuilder = new StringBuilder();
        TextWriter tWriter = new StringWriter(sBuilder);


        XsltArgumentList xslArgs = new XsltArgumentList();
        xslArgs.AddParam("TipoMenu", "", TipoMenu);
        xslt.Transform(trMenu, xslArgs, tWriter);

        string resultado = sBuilder.ToString();
        Response.Write(resultado);


    }
}