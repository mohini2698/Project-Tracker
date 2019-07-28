<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUsers.aspx.cs" Inherits="TrackerProject.AddUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="Admincss.css" rel="stylesheet" />

</head>
    <style type="text/css">
        
.auto-style1 {
    width: 1673px;
    height: 41px;
}

.auto-style30, .auto-style36, .auto-style33, .auto-style32, .auto-style73, .auto-style34, .auto-style50, .auto-style29, .auto-style28{
   border-radius:15px;

}
        .auto-style80 {
            border-radius:15px;
            background-color:#fff;
        }
         .auto-style80:hover {
        background-color: #34097c;
        color: #fff;
        border-radius: 15px;
        }

.auto-style2 {
    height: 56px;
    margin-bottom: 0;
}
        .auto-style49 {
            height: 46px;
        }
        .auto-style50 {
            margin-left: 15px;
        }
        .auto-style51 {
            width: 100%;
        }
        </style>
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
            <div>
             <table style="background:#8d51e3; " class="auto-style51">
                <tr>
                    <td>
                          <asp:Button ID="AddUsersid" runat="server" Text="Add Users" OnClick="AddClient_Click1" Width="232px" Height="44px" CssClass="auto-style80" />
                    </td>
                 
                    <td>
                   <asp:Button ID="EditUsers" runat="server" Text="Edit Users" OnClick="EditUsers_Click" Width="215px" Height="44px" CssClass="auto-style80"  />
            </td>
                              
                </tr>
                </table>

             <br />


        </div>




            
        </div>


        <table class="auto-style53">
                <tr>
                    <td >
                        <asp:Label Text="EmployeeID*:"  runat="server"  ID="lblemp" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"    Width="723px"  ID="txtemp" CssClass="auto-style36" Height="29px" MaxLength="4" style="margin-left: 59px"/>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemp" ErrorMessage="Enter Valid Employee Id " ValidationExpression="^[0-9]{1,4}$"></asp:RegularExpressionValidator>
                   
                        </td>
                </tr>

             <tr>
                    <td >
                        <asp:Label Text="Email*:"  runat="server" ID="lblemailid" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"     Width="723px" ID="txtemailid" CssClass="auto-style33" Height="29px" style="margin-left: 102px"/>
                    </td>
                </tr>

            <tr>
                    <td class="auto-style49" >
                        <asp:Label Text="First Name*:"  runat="server"  ID="lblfirst" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"     Width="722px"  ID="txtfirst" CssClass="auto-style30" Height="29px" style="margin-left: 63px"/>
                    </td>
                </tr>
             <tr>
                    <td class="auto-style49" >
                        <asp:Label Text="Last Name*:"  runat="server"  ID="lbllast" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"     Width="722px"  ID="txtlast" CssClass="auto-style32" Height="29px" style="margin-left: 65px"/>
                    </td>
                </tr>            
             <tr>
                    <td >
                        <asp:Label Text="Middle Name :"  runat="server"  ID="lblmid" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"     Width="722px"  ID="txtmid" CssClass="auto-style73" Height="29px" style="margin-left: 49px"/>
                    </td>
                </tr>

             <tr>
                    <td >
                        <asp:Label Text="Mobile No 1*:"  runat="server"  ID="lblmn" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"     Width="722px"  ID="txtmn" CssClass="auto-style34" Height="29px" style="margin-left: 51px"/>
                    </td>
                </tr>
                <tr>
                    <td >
                        <asp:Label Text="Mobile No 2  :"  runat="server"  ID="lblmn2" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"     Width="722px"  ID="txtmn2" CssClass="auto-style36" Height="29px" style="margin-left: 53px"/>
                    </td>
                </tr>
               
                <tr>
                    <td >
                        <asp:Label Text="Organization-Role*:"  runat="server"  ID="lblor" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                          <asp:DropDownList ID="DropDownList1"  runat="server" Width="725px" Height="32px" CssClass="auto-style50">
                        </asp:DropDownList>
                    </td>
                </tr>
               

                <tr>
                    <td >
                        <asp:Label Text="Password*:"  runat="server"  ID="lblpass" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter Password"   Width="722px"  ID="txtpass" CssClass="auto-style29" Height="29px" MaxLength="8" style="margin-left: 72px"/>
                    </td>
                </tr>
                      
                <tr>
                    <td >
                        <asp:Button ID="AddID" runat="server" Text="Add User" Width="220px" OnClick="AddID_Click" CssClass="auto-style28" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; margin-right: 300px; margin-left: 656px;" Height="42px" />
                    </td>
                   
                    
                </tr>
            </table>


        <asp:GridView ID="ShowUsers" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" style="padding-left:25%" AutoGenerateColumns="False"  OnSelectedIndexChanged="ShowUsers_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="Email" HeaderText="Users" SortExpression="Email" />
                     <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />

            </asp:GridView>

    </form>
</body>
</html>
