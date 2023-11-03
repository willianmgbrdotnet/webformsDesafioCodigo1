<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormCalculadoraCheckBoxList.aspx.cs" Inherits="webformsDesafioCodigo1.WebFormCalculadoraCheckBoxList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora e CheckBoxList</title>
    <style  type="text/css">
        .auto-style1 {
            width: 251px;
        }
        .auto-style2 {
            width: 248px;
        }
        body {
        background-image:url('image/realMadrid.png');
        background-size:cover;
        background-repeat:no-repeat;
        background-attachment:fixed;
        }
    </style>
</head>
<body>
    <h1>Calculadora</h1>
    <form id="form1" runat="server">
        <div class="body">
            <table style="width: 100%; height: 60px;">
                <tr>
                    <td>
                        <asp:TextBox ID="txtPrimeiroNumero" runat="server" Width="140px"></asp:TextBox>
&nbsp;
                        <asp:TextBox ID="txtSegundoNumero" runat="server" Width="140px"></asp:TextBox>
&nbsp;
                        <asp:DropDownList ID="ddlEscolherOperacao" runat="server">
                            <asp:ListItem Value="0">&quot;Escolha a Operação&quot;</asp:ListItem>
                            <asp:ListItem Value="1">Soma +</asp:ListItem>
                            <asp:ListItem Value="2">Subtração -</asp:ListItem>
                            <asp:ListItem Value="3">Multiplicação *</asp:ListItem>
                            <asp:ListItem Value="4">Divisão /</asp:ListItem>
                        </asp:DropDownList>
&nbsp;
                        <asp:Button ID="btnCalcular" runat="server" Text="Calcular" BackColor="#99CCFF" Font-Bold="True" OnClick="btnCalcular_Click" />
&nbsp;
                        <asp:Label ID="lblResultado" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
            <h2>Disponibilidade para Trabalho</h2>

        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:CheckBoxList ID="clbDiasDaSemana" runat="server" Height="240px" Width="160px" Font-Bold="True" Font-Size="Medium">
                        <asp:ListItem Value="1">Domingo</asp:ListItem>
                        <asp:ListItem Value="2">Segunda-Feira</asp:ListItem>
                        <asp:ListItem Value="3">Terça-Feira</asp:ListItem>
                        <asp:ListItem Value="4">Quarta-Feira</asp:ListItem>
                        <asp:ListItem Value="5">Quinta-Feira</asp:ListItem>
                        <asp:ListItem Value="6">Sexta-Feira</asp:ListItem>
                        <asp:ListItem Value="7">Sábado</asp:ListItem>
                    </asp:CheckBoxList>
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:ListBox ID="lstbDiasConfirmados" runat="server" Height="240px" Width="160px" Font-Size="Medium"></asp:ListBox>
                </td>
                <td>
                    <asp:Label ID="lblDiasConfirmados" runat="server" Font-Size="X-Large" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnClbConfirmarDias" runat="server" OnClick="btnClbConfirmarDias_Click" Text="Confirme os dias aqui" BackColor="#99CCFF" Font-Bold="True" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    &nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
