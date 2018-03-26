<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QR_Code.aspx.cs" Inherits="Frigo.QR_Code" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Inserire i dati per generare il QR Code:</h1>
    <br />
    <form id="form1" runat="server">
        <div style="height: 605px">
            Nome Prodotto: 
            <asp:TextBox ID="txtNome" runat="server" Width="429px"></asp:TextBox> <br />
            Quantitativo:
            <asp:TextBox ID="txtQT" runat="server" Width="185px"></asp:TextBox> <br />
            Data di scadenza: <br />
            <asp:DropDownList ID="giorno" runat="server" Width="60"></asp:DropDownList>
            <asp:DropDownList ID="mese" runat="server" Width="60"></asp:DropDownList>
            <asp:DropDownList ID="anno" runat="server" Width="60"></asp:DropDownList>
            <br /> <br />
            <asp:Button ID="btnGenera" runat="server" Text="Genera QR" OnClick="btnGenera_Click" />
            <br /> <br />
            <asp:Image ID="imgQR" runat="server" Width="400" Height="400" Visible="False" />
        </div>
    </form>
</body>
</html>
