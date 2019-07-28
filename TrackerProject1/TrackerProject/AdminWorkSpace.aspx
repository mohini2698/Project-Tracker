<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminWorkSpace.aspx.cs" Inherits="TrackerProject.AdminWorkSpace" %>

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

.auto-style2 {
    height: 56px;
    margin-bottom: 0;
    
}

    .auto-style12:hover {
        background-color: #8d51e3;
        color: #fff;
        border-radius: 20px
    }

    

.auto-style23 {
    margin-left: 93px;
    
}

.auto-style28:hover {
    background-color: #8d51e3;
    color: #fff;
    border-radius: 20px
}


.auto-style23 {
    margin-left: 93px;
    
}

        

        .auto-style48 {
            font-size: 16px;
            color: #000;
            background-color: #fea9d8;
            cursor: pointer;
            border-radius: 20px;
            transition: .3s ease-in-out;
        }

        .btnhome1 {
    width: 100px;
    border: none;
    outline: none;
    height: 27px;
    font-size: 20px;
    color: #000;
   
    background-color: #60fd74;
    cursor: pointer;
    border-radius: 20px;
    transition: .3s ease-in-out;
}

    .btnhome1:hover {
        background-color: #34097c;
        color: #fff;
        border-radius: 20px;
    }

        .auto-style76 {
            width: 172px;
        }

        .auto-style30 {
            border-radius:20px;
            background-color: #fff;
        }
        .auto-style30:hover{
        background-color: #34097c;
        color: #fff;
        border-radius: 20px
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
            <table class="auto-style53" style="background:#8d51e3; ">
                <tr>
                    <td class="auto-style76" >
                        <br />
                        <br />
                        <asp:button ID = "UserID" Text="Users" onselectedindexchanged="UserID_SelectedIndexChanged" AutoPostBack="true"  runat="server" OnClick="UserID_Click" Width="170px" Height="31px" CssClass="auto-style30" />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style76" >
                        <asp:button ID = "ClientID" Text="Client"  AutoPostBack="true"  runat="server" OnClick="ClientID_Click" Width="169px" Height="31px" CssClass="auto-style30" />
                        <br />
                        <br />
                    </td>
                </tr>
                    <tr>
                    <td  >
                        <asp:button ID = "ProjectID" Text="Project"  AutoPostBack="true"  runat="server" OnClick="ProjectID_Click" Width="169px" Height="31px" CssClass="auto-style30" />

                        
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         
                         
                    </td>
                </tr>
                    
            </table>



        </div>
      
            
    </form>
</body>
</html>
