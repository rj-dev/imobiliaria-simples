using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class Imobiliaria : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadGrid1_OnItemInserted(object source, GridInsertedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "sucesso", "alert('cadastro inserido!')", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "erro", "alert('erro na gravação!')", true);
        }
    }
}