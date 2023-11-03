<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormCalculadoraCheckBoxList.aspx.cs" Inherits="webformsDesafioCodigo1.WebFormCalculadoraCheckBoxList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora e CheckBoxList</title>
</head>
<body>
    <h1>Calculadora</h1>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%; height: 60px;">
                <tr>
                    <td>
                        <asp:TextBox ID="txtPrimeiroNumero" runat="server"></asp:TextBox>
&nbsp;
                        <asp:TextBox ID="txtSegundoNumero" runat="server"></asp:TextBox>
&nbsp;
                        <asp:DropDownList ID="ddlEscolherOperacao" runat="server">
                            <asp:ListItem Value="0">&quot;Escolha a Operação&quot;</asp:ListItem>
                            <asp:ListItem Value="1">Soma +</asp:ListItem>
                            <asp:ListItem Value="2">Subtração -</asp:ListItem>
                            <asp:ListItem Value="3">Multiplicação *</asp:ListItem>
                            <asp:ListItem Value="4">Divisão /</asp:ListItem>
                        </asp:DropDownList>
&nbsp;
                        <asp:Button ID="btnCalcular" runat="server" Text="Calcular" BackColor="#CCFFFF" Font-Bold="True" OnClick="btnCalcular_Click" />
&nbsp;
                        <asp:Label ID="lblResultado" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
