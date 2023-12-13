<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="izvestaj.aspx.cs" Inherits="PitDomaci.izvestaj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%@ PreviousPageType VirtualPath="~/prijava.aspx" %>
            <h1>IZVESTAJ</h1>
            <asp:Label ID="lbl_izv" runat="server" />
        </div>
    </form>
</body>
</html>
