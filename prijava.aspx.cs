using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PitDomaci
{
    public partial class prijava : System.Web.UI.Page
    {
        public string ime
        {
            get { return txtIme.Text; }
        }
        public string email
        {
            get { return txtEmail.Text; }
        }
        public string god
        {
            get { return txtGod.Text; }
        }
        public string raz
        {
            get { return rdnbtn.Text; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btn_Click(object sender, EventArgs e)
        {
            if (txtImeValidator.IsValid && txtEmailValidator.IsValid &&
                txtEmailValidator2.IsValid && txtGodValidator.IsValid &&
                txtGodValidator2.IsValid && txtPotvrdaValidator.IsValid &&
                rdnbtnValidator.IsValid)
                btn.PostBackUrl = "~/izvestaj.aspx";
            else
                lbl.Text = "Niste se uspesno prijavili!";

        }
    }
}