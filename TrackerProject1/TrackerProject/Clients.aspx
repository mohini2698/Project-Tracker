<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="TrackerProject.Clients" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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
        .auto-style66 {
         width: 366px;
         height: 41px;
         margin-left: 77px;
     }
     .auto-style67 {
         width: 357px;
         height: 41px;
         margin-left: 56px;
     }
     .modalBackground
    {
        background-color: Black;
        filter: alpha(opacity=40);
        opacity: 0.4;
    }
    .modalPopup
    {
        background-color: #FFFFFF;
        width: 300px;
        border: 3px solid #0DA9D0;
    }

        .auto-style68 {
         margin-left: 0px;
     }
     .auto-style69 {
         margin-left: 73px;
     }
     .auto-style70 {
         margin-left: 38px;
     }
     .auto-style71 {
         margin-left: 53px;
     }
     .auto-style72 {
         margin-left: 17px;
     }
     .auto-style73 {
         margin-left: 23px;
     }

     .auto-style72, .auto-style73, .auto-style71, .auto-style69, .auto-style70, .auto-style67, .auto-style66, .auto-style13, .auto-style3{
   border-radius:15px;

}
        .auto-style49,.auto-style68, .auto-style12{
            border-radius:15px;
            background-color:#fff;
        }
         .auto-style49,.auto-style68:hover {
        background-color: #34097c;
        color: #fff;
        border-radius: 15px;
        }

        .auto-style74 {
         border-radius: 15px;
         margin-left: 0px;
         background-color: #fff;
     }
         .auto-style74:hover {
        background-color: #34097c;
        color: #fff;
        border-radius: 15px;
        }

         .auto-style75:hover {
        background-color: #34097c;
        color: #fff;
        border-radius: 15px;
        } 
         .auto-style12:hover {
        background-color: #34097c;
        color: #fff;
        border-radius: 15px;
        } 
     .auto-style75 {
         border-radius: 15px;
         margin-left: 41px;
         background-color: #fff;
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
             <table style="background:#8d51e3; width:100%">
                <tr>
                    <td>
                          <asp:Button ID="AddClient" runat="server" Text="Add Clients" OnClick="AddClient_Click1" Width="190px" CssClass="auto-style75" Height="35px" />
                    </td>
                 
                    <td>
                   <asp:Button ID="ViewClient" runat="server" Text="View Clients" OnClick="ViewClient_Click" Width="185px" CssClass="auto-style74" Height="35px" />
                    </td>
                         <td>
                   <asp:Button ID="EditClient" runat="server" Text="Edit Clients" OnClick="EditClient_Click" Width="190px" Height="35px" CssClass="auto-style68" />
                    </td>     
                </tr>
                </table>
             <br />


        </div>






        <div>
            <table>
</table>
             <table>
                <tr>
                    <td>
                        <asp:Label Text="Enter Client Name*:"  runat="server" ID="lblclientid" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter Name"   Width="722px" ID="txtclientid" CssClass="auto-style3" Height="29px" style="margin-left: 26px"/>
                    </td>
                </tr>
               
                <tr>

                    <td>
                        <asp:Label Text="Enter Country*:"  runat="server" ID="lblcountry" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter Country"   Width="722px" ID="txtcountry" CssClass="auto-style13" Height="29px" style="margin-left: 54px"/>
                    </td>
                </tr>

                 
                <tr>
                    <td>
                        <asp:Label Text="Enter State*:"  runat="server" ID="lblstate" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter State"   Width="722px" ID="txtstate" CssClass="auto-style66" Height="29px"/>
                    </td>
                </tr>
               
                  <tr>
                    <td>
                        <asp:Label Text="Enter Address*:"  runat="server" ID="lbllocationid" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter Address"   Width="722px" ID="txtlocationid" CssClass="auto-style67" Height="29px"/>
                        
                        </td>
                    
                </tr>

                 <tr>
                    <td>
                        <asp:Label Text="Enter Mobile No*:"  runat="server" ID="lblmobno" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                          <asp:TextBox runat="server"  placeholder="Enter Mobile No"   Width="722px" ID="txtmobno" CssClass="auto-style70" Height="29px"/>
                    </td>
                </tr>
                

                <tr>
                    <td>

                        <asp:Label Text="Enter Email*:"  runat="server" ID="lblcontactid" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter Email"   Width="722px" ID="txtcontactid" CssClass="auto-style69" Height="29px"/>
                    </td>
                </tr>

                     <tr>
                    <td>
                        <asp:Label Text="Enter Skype ID :"  runat="server" ID="lblskype" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter Skype"   Width="722px" ID="txtskype" CssClass="auto-style71" Height="29px"/>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label Text="Enter Whatsapp No:"  runat="server" ID="lblwhat" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter Whatsapp No"   Width="722px" ID="txtwhat" CssClass="auto-style73" Height="29px"/>
                        
                        </td>
                    
                </tr>

                <tr>
                    <td>
                        <asp:Label Text="Enter Project Name*:"  runat="server" ID="lblprojectid" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter Prpjectname"   Width="722px" ID="txtprojectid" CssClass="auto-style72" Height="29px"/>
                        
                        </td>
                    
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Button ID="AdClient" runat="server" Text="Add Client" Width="213px" OnClick="Client_Click" CssClass="auto-style12" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; margin-left: 670px;" Height="41px"/>
                    </td>
                   
                    
                </tr>
            </table>

            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" DataKeyNames="Name" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Client" SortExpression="Name" />
                    <asp:CommandField />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ClientId" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="ClientId" HeaderText="ClientId" InsertVisible="False" ReadOnly="True" SortExpression="ClientId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Projectname" HeaderText="Projectname" SortExpression="Projectname" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    <asp:BoundField DataField="Skype" HeaderText="Skype" SortExpression="Skype" />
                    <asp:BoundField DataField="WhatsApp" HeaderText="WhatsApp" SortExpression="WhatsApp" />
                </Fields>
            </asp:DetailsView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectTrackerConnectionString2 %>" SelectCommand="SELECT [Name] FROM [Client]"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectTrackerConnectionString3 %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT Client.ClientId, Client.Name, Client.Projectname, Client.Country, Client.State, Client.Address, ClientContact.Email, ClientContact.Mobile, ClientContact.Skype, ClientContact.WhatsApp FROM Client INNER JOIN ClientContact ON Client.ClientId = ClientContact.ClientId WHERE (Client.Name = @Name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Name" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:TextBox ID="searchbox" runat="server" OnTextChanged="TextBox1_TextChanged" Width="432px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="search" runat="server" OnClick="search_Click1" Text="Search" />
            &nbsp;<br />


            <asp:GridView ID="EditDetails" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" style="padding-left:25%" AutoGenerateColumns="False"  OnSelectedIndexChanged="EditDetails_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="Name" HeaderText="Clients" SortExpression="Name" />
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
            



        </div>



        <asp:GridView ID="EditDetails2" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" style="padding-left:25%" AutoGenerateColumns="False"  OnSelectedIndexChanged="EditDetails1_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="Name" HeaderText="Clients" SortExpression="Name" />
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
