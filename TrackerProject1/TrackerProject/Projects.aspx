<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="TrackerProject.Projects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <script type="text/javascript" language="javascript">
        $(function () {
            $("#<%=txtesd.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: 'd-M-yy',
                yearRange: '2019:2030'
            });
        });
    </script>

    <script type="text/javascript" language="javascript">
        $(function () {
            $("#<%=txtefd.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: 'd-M-yy',
                yearRange: '2019:2030'
            });
        });
    </script>
    




     



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
         margin-left: 104px;
     }
        .auto-style50 {
         margin-left: 58px;
     }
     .auto-style51 {
         width: 979px;
     }
     .auto-style52 {
         width: 100%;
         height: 41px;
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
             <table style="background:#8d51e3; " class="auto-style52">
                <tr>
                    <td>
                          <asp:Button ID="AddProject" runat="server" Text="Add Project" OnClick="AddProject_Click1" Width="190px" CssClass="auto-style49" Height="31px" />
                    </td>
                 
                    <td>
                   <asp:Button ID="ViewProject" runat="server" Text="View Project" OnClick="ViewProject_Click" Width="151px" Height="34px" />
            </td>
                              
                </tr>
                </table>
             <br />


        </div>


        <div>

            <table class="auto-style56" >
                <tr>
                    <td class="auto-style51" >
                        <asp:Label Text="Enter Project Name*:"  runat="server"  ID="lblpron" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter Project Name" ID="txtpron"  Height="29px"  Width="722px" CssClass="auto-style57" style="margin-left: 51px" />
                    </td>
                </tr>  
                <tr>
                    <td class="auto-style51" >
                        <asp:Label Text="Enter SVN location:"  runat="server"  ID="lblsvn" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter SVN location" ID="txtsvn"  Height="29px"  Width="722px" CssClass="auto-style58" style="margin-left: 63px"/>
                    </td>
                </tr>

                 
                <tr>
                   <td class="auto-style51" >
                        <asp:Label Text="Enter Estimated Start Date*:"  runat="server"  ID="lblesd" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter Estimated start date" ID="txtesd"  Height="29px"  Width="603px" CssClass="auto-style59" style="margin-left: 5px"  />
                 
                   </td> 
                </tr>

                 <tr>
                     <td class="auto-style51" >
                        <asp:Label Text="Enter Estimated finish Date*:"  runat="server"  ID="lblefd" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter Estimated finish date" ID="txtefd"  Height="29px"  Width="602px" CssClass="auto-style60" style="margin-left: 5px"/>
                  </td>
                        
                    

                </tr>

                 
                   
                 

                 <tr>
                    <td class="auto-style51" >
                        <asp:Label Text="Enter Project status:"  runat="server"  ID="lblstat" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
  <asp:DropDownList ID="DropDownList2"  runat="server" Width="725px" Height="32px" CssClass="auto-style50">
                        </asp:DropDownList>

                    </td>
                </tr>

                 <tr>
                    <td class="auto-style51">
                 <asp:Button ID="Add_Project" runat="server" Text="Add Project" Width="206px" OnClick="AddProject_Click" CssClass="auto-style65" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; margin-left: 713px;" Height="37px"/>
                  </td>
                     </tr>
                 </table>

            <asp:TextBox ID="searchbox" runat="server" OnTextChanged="TextBox1_TextChanged" Width="432px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;<asp:Button ID="search" runat="server" Text="Search" OnClick="search_Click1" />
            &nbsp;
            <asp:GridView ID="ShowProjects" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" style="padding-left:25%" AutoGenerateColumns="False"  OnSelectedIndexChanged="ShowProjects_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="Projectname" HeaderText="Projectname" SortExpression="Projectname" />
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


            

 <asp:GridView ID="ShowProjects2" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" style="padding-left:25%" AutoGenerateColumns="False"  OnSelectedIndexChanged="ShowProjects2_SelectedIndexChanged">
                <Columns>
                   
                    <asp:BoundField DataField="Projectname" HeaderText="Projectname" SortExpression="Projectname" />
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



    </form>
</body>
</html>
