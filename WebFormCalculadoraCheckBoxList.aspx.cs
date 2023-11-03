using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webformsDesafioCodigo1
{
    public partial class WebFormCalculadoraCheckBoxList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            
            if (double.TryParse(txtPrimeiroNumero.Text, out double x) && double.TryParse(txtSegundoNumero.Text, out double y))
            {
                if(ddlEscolherOperacao.SelectedIndex == 1)
                {
                    lblResultado.Text = "A Soma é: " + (x + y).ToString();
                }
                else if(ddlEscolherOperacao.SelectedIndex == 2)
                {
                    lblResultado.Text = "A Diferença é: " + (x - y).ToString();
                }
                else if(ddlEscolherOperacao.SelectedIndex == 3)
                {
                    lblResultado.Text = "O Produto é: " + (x * y).ToString();
                }
                else if(ddlEscolherOperacao.SelectedIndex == 4)
                {
                    lblResultado.Text = "O Quociente é: " + (x / y).ToString();
                }
                else
                {
                    lblResultado.Text = "Escolha uma Operação Matemática! Use o ' . ' ponto para separar as casas decimais.";
                }
            }
            else
            {
                lblResultado.Text = "Use apenas Números nesta Calculadora! Use o ' . ' ponto para separar as casas decimais.";
            }
        }

        protected void btnClbConfirmarDias_Click(object sender, EventArgs e)
        {
            lstbDiasConfirmados.Items.Clear();
            lblDiasConfirmados.Text = string.Empty;
            for (int i = 0; i < clbDiasDaSemana.Items.Count; i++)
            {
                if (clbDiasDaSemana.Items[i].Selected)
                {
                    lstbDiasConfirmados.Items.Add(clbDiasDaSemana.Items[i].Text);

                    lblDiasConfirmados.Text += clbDiasDaSemana.Items[i].Text + "<br />";
                }
            }
        }
    }
}