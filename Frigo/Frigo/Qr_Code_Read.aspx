<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Qr_Code_Read.aspx.cs" Inherits="Frigo.Qr_Code_Read" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" enctype = "multipart/form-data" method="post" runat="server">
        <INPUT type=file id=File1 name=File1 runat="server" />
        <br>
        <input type="submit" id="Submit1" value="Upload" runat="server" />
    </form>
</body>
</html>
