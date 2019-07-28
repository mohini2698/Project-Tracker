<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TrackerProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="LoginStyleSheet.css" rel="stylesheet" />
    <script>
        function ShowPopup() {
            $(function () {
                $("#popup2").dialog({
                height: 300,
             width: 550
                });
            });
        };
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 1673px;
            height: 41px;
        }
        .auto-style2 {
            height: 56px;
            margin-bottom: 0;
        }
        </style>
</head>
<body>
    <form runat="server">
     <div>
            <table style="margin-left: auto; margin-right: auto; margin-top: 0;" class="auto-style2">
                <tr>
                <td style="background:#cabede" class="auto-style1">
             <div style="background:#cabede;margin-top:0px;padding-top:0px " class="auto-style23">
             <asp:Button Text="Home" runat="server" CssClass="btnhome"  Height="34px"  style="margin-top:3px" ID="Homebutton" OnClick="Homebutton_Click" />
             </div>

                </td>
                    
                </tr>
            </table>

            
        </div>

 
        <div class="loginbox">
            <img src="l1.png" alt="Alternate Text" class="user"/>

            <h2>Login Here</h2>

           
            
                <br/>
                <br/>
                <asp:Label Text="Employee ID" CssClass="lbluname" runat="server" />
                <asp:TextBox runat="server" CssClass="txtuname"  placeholder="Enter Employee Id" ID ="UnameID"/>
            
                <asp:Label Text="Password" CssClass="lblpass" runat="server" />
                <asp:TextBox runat="server" CssClass="txtpass" placeholder=" Enter Password " ID ="UpassID" textmode = "Password"/>
                <asp:Button Text="Sign In" CssClass="btnsubmit" runat="server" OnClick="SignInbutton_Click" ID="btnid" />
                <a href ="#" onclick ="window.open('ForgetPassword.aspx','FP','width =500, height =50, top=300,left =500,fullscreen=no, resizable =0');">Forget Password?</a>
            

        </div>
    </form>
</body>
</html>


