<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="TrackerProject.EditUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="Admincss.css" rel="stylesheet" />

     <style type="text/css">
        .auto-style1 {
            width: 1673px;
            height: 41px;
        }
        .auto-style2 {
            height: 56px;
            margin-bottom: 0;
        }
         .auto-style49 {
             margin-left: 135px;
             border-radius:15px;
         }
         .auto-style50 {
             margin-left: 76px;
             border-radius:15px;
             background-color:#ffffff;
             margin-top: 11px;
         }
         .auto-style51 {
             margin-left: 9px;
             border-radius:15px;
         }
         .auto-style52 {
             margin-left: 77px;
             border-radius:15px;
              background-color:#ffffff;
         }
         .auto-style53 {
             margin-left: 10px;
             border-radius:15px;
         }
         .auto-style54 {
             margin-left: 80px;
             border-radius:15px;
              background-color:#ffffff;
         }
        /*
            .auto-style50,.auto-style52, .auto-style54 :hover{
             color:#ffffff;
             border-radius:15px;
             background-color:#34097c;
         }
        */ 
         .auto-style55 {
             margin-left: 11px;
             border-radius:15px;
         }



        </style>
</head>
<body>
    <form id="form1" runat="server">

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

        <div>


        </div>
        <asp:Label ID="lbluname" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txtuname" runat="server" CssClass="auto-style49" Height="31px" Width="501px"></asp:TextBox>

        <br />

        <asp:Label ID="lblph1" runat="server" Text="Mobile Number 1 :"></asp:Label>
        <asp:Button ID="btnph1" runat="server" Text="Button" OnClick="Button1_Click" CssClass="auto-style50" Width="118px" Height="31px" />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style51" Height="32px" Width="369px"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" OnClick="ImageButton1_Click" Width="40px" ImageUrl="~/checkbox-303113__340.png"/>
        <br />
        <asp:Label ID="lblph21" runat="server" Text="Mobile Number 2 :"></asp:Label>
        <asp:Button ID="btnph2" runat="server" Text="Button" OnClick="Button2_Click" CssClass="auto-style52" Width="117px" Height="31px" />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style53" Height="32px" Width="367px"></asp:TextBox>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="27px" OnClick="ImageButton2_Click" Width="38px" ImageUrl="~/checkbox-303113__340.png"/>
        <br />
        <asp:Label ID="lblorg" runat="server" Text="Organisation Role:"></asp:Label>
        <asp:Button ID="btnorg" runat="server" Text="Button" OnClick="Button3_Click" CssClass="auto-style54" Width="117px" Height="31px" />
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style55" Height="32px" Width="361px"></asp:TextBox>
        <asp:ImageButton ID="ImageButton3" runat="server" Height="26px" OnClick="ImageButton3_Click" Width="42px" ImageUrl="~/checkbox-303113__340.png"/>
        <br />
        
        

        

    </form>
</body>
</html>
