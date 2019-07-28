<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="TrackerProject.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                Enter your Register Email Id : <asp:TextBox ID ="TxtEmail" runat ="server"></asp:TextBox>
                <br />
                <asp:Button ID="buttonpwd" runat="server" Text="Get your Password" OnClick="buttonpwd_Click" />
                <br />
                <asp:Label ID ="Labmsg" runat="server"></asp:Label>
            </center>
        </div>
    </form>
</body>
</html>
