using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace validator
{
    public partial class valid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void afficher(string a, string b, string c,  string d, string e )
        {
            Label7.Text = "nom : " + a + " || " + "prenom : " + b + " || " + "note Bac : " + c + " || " + "age : " + d + "||" + "passowrd : " + e;

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string nom = TextBox1.Text;
            string pre = TextBox2.Text;
            string note = TextBox3.Text;
            string age = TextBox4.Text;
            string pass = TextBox5.Text;

            afficher(nom,pre,note,age,pass);
        }
    }
}