<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditClient.aspx.cs" Inherits="TrackerProject.EditClient" %>

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
            margin-left: 8px;
            border-radius:15px;
        }
         .auto-style88 {
           
            border-radius:15px;
        }
        .auto-style50 {
            margin-left: 5px;
            border-radius:15px;
        }
        .auto-style51 {
            margin-left: 9px;
            border-radius:15px;
        }
        .auto-style52 {
            margin-left: 10px;
            border-radius:15px;
        }
        .auto-style53 {
            margin-left: 12px;
            border-radius:15px;
        }
        .auto-style54 {
            margin-left: 3px;
             border-radius:15px;
             background-color:#ffffff;
        }
        .auto-style55 {
            border-radius:15px;
            margin-left: 0px;border-radius:15px;background-color:#ffffff;
        }
        .auto-style56 {
            margin-left: 7px;
             border-radius:15px;background-color:#ffffff;
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
        <asp:Label ID="Lblname" runat="server" Text="Name :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnname" runat="server" Text="Button" CssClass="auto-style54" Height="36px" Width="268px"  />
        

        <br />

        <asp:Label ID="Lblcon" runat="server" Text="Country :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Btncon" runat="server" Text="Button" OnClick="Btncon_Click" Height="36px" Width="265px"  CssClass="auto-style54"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtcon" runat="server" Height="34px" Width="400px" CssClass="auto-style88"></asp:TextBox >
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" Height="27px" Width="33px" OnClick="ImageButton2_Click" ImageUrl="~/checkbox-303113__340.png"/>
        <br />

        <asp:Label ID="lblst" runat="server" Text="State :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnst" runat="server" Text="Button" OnClick="btnst_Click" Height="36px" Width="260px" CssClass="auto-style54" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtst" runat="server" CssClass="auto-style49" Height="34px" Width="398px" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton3" runat="server" Height="27px" Width="32px" OnClick="ImageButton3_Click" ImageUrl="~/checkbox-303113__340.png" />
        <br />

        <asp:Label ID="lbladd" runat="server" Text="Address :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnadd" runat="server" Text="Button" OnClick="btnadd_Click" CssClass="auto-style56" Height="36px" Width="260px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtadd" runat="server" CssClass="auto-style50" Height="34px" Width="397px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton4" runat="server" Height="27px" Width="33px" OnClick="ImageButton4_Click" ImageUrl="~/checkbox-303113__340.png"/>
        <br />

        <asp:Label ID="lblpname" runat="server" Text="ProjectName :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnpname" runat="server" Text="Button" OnClick="btnpname_Click" Height="36px" Width="257px" CssClass="auto-style54"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtpname" runat="server" CssClass="auto-style50" Height="34px" Width="398px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton5" runat="server" Height="27px" Width="33px" OnClick="ImageButton5_Click" ImageUrl="~/checkbox-303113__340.png" />
        <br />

        <asp:Label ID="lblemail" runat="server" Text="Email :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnemail" runat="server" Text="Button" OnClick="btnemail_Click" Height="36px" Width="256px" CssClass="auto-style54"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtemail" runat="server" CssClass="auto-style51" Height="34px" Width="393px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton6" runat="server" Height="27px" Width="34px" OnClick="ImageButton6_Click" ImageUrl="~/checkbox-303113__340.png" />
        <br />

        <asp:Label ID="lblmob" runat="server" Text="Mobile :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnmob" runat="server" Text="Button" OnClick="btnmob_Click" Height="36px" Width="254px" CssClass="auto-style54" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtmob" runat="server" CssClass="auto-style52" Height="34px" Width="392px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton7" runat="server" Height="27px" Width="33px" OnClick="ImageButton7_Click" ImageUrl="~/checkbox-303113__340.png" />
        <br />

        <asp:Label ID="lblsky" runat="server" Text="Skype :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnsky" runat="server" Text="Button" OnClick="btnsky_Click" CssClass="auto-style55" Height="36px" Width="246px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtsky" runat="server" CssClass="auto-style52" Height="34px" Width="392px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton8" runat="server" Height="27px" Width="33px" OnClick="ImageButton8_Click" ImageUrl="~/checkbox-303113__340.png" />
        <br />

        <asp:Label ID="lblwapp" runat="server" Text="Whatsapp :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnwapp" runat="server" Text="Button" OnClick="btnwapp_Click" Height="36px" Width="249px" CssClass="auto-style54"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtwapp" runat="server" CssClass="auto-style53" Height="34px" Width="392px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton9" runat="server" Height="28px" Width="33px" OnClick="ImageButton9_Click" ImageUrl="~/checkbox-303113__340.png"/>
        <br />

        


    </form>
</body>
</html>

