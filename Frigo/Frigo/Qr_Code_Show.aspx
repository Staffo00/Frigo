<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Qr_Code_Show.aspx.cs" Inherits="Frigo.Qr_Code_Show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>QR Code Generato</title>
    <style>
    * {
        box-sizing: border-box;
    }

    input[type=submit] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        float: right;
    }

    input[type=submit]:hover {
        background-color: #45a049;
    }

  </style>
</head>
<body>
    <form runat="server" action="QR_Code.aspx">
        <div> 
            <asp:Image ID="imgQR" runat="server" Height="400px" Width=400px />
            <input type="submit" value="Nuovo QR Code" />
        </div>
    </form>
</body>
</html>
