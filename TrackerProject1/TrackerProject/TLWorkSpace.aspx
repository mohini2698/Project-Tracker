<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TLWorkSpace.aspx.cs" Inherits="TrackerProject.TLWorkSpace" %>

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


        
.auto-style65 {
    margin-left: 829px;
   margin-right:60px;
    border-style: none;
    border-color: inherit;
    border-width: medium;
    outline: none;
    font-size: 16px;
    color: #000;
    
    background-color: #fea9d8;
    cursor: pointer;
    border-radius: 20px;
    transition: .3s ease-in-out;
}

.auto-style65:hover {
    background-color: #8d51e3;
    color: #fff;
    border-radius: 20px
}


        .auto-style66 {
            width: 1429px;
        }

        .auto-style49 {
           float:right;
           margin-right:50px;
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            font-size: 16px;
            color: #000;
            cursor: pointer;
            border-radius: 20px;
            transition: .3s ease-in-out;
         
           background-color: #fff;
        }

         .auto-style48 {
           float:left;
           margin-left:50px;
        }

        .auto-style67 {
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            font-size: 16px;
            color: #000;
            cursor: pointer;
            border-radius: 20px;
            transition: .3s ease-in-out;
            float: left;
            margin-left: 50px;
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
       

         <table style="background:#8d51e3; width:100%">
                <tr>
                    <td>
                   
                   <asp:button ID = "AddprojectID" Text="Add Projects" onselectedindexchanged="AddprojectID_SelectedIndexChanged" AutoPostBack="true" CssClass="auto-style67" runat="server" OnClick="AddprojectID_Click" Width="156px" Height="32px"  />
                    </td>
                    <td>
                   
                   <asp:button ID = "ViewprojectID" Text="View Projects" onselectedindexchanged="ViewprojectID_SelectedIndexChanged" AutoPostBack="true" CssClass="auto-style49" runat="server" OnClick="ViewprojectID_Click" Height="32px" style="margin-left: 0px" Width="156px"  />
                    </td>                 
                </tr>
                </table>
             <br />

        <div>

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





            
           <table class="auto-style56" >
                <tr>
                    <td >
                        <asp:Label Text="Enter Project Name*:"  runat="server"  ID="lblpron" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter Project Name" ID="txtpron"  Height="29px"  Width="722px" CssClass="auto-style57" />
                    </td>
                </tr>  
                <tr>
                    <td >
                        <asp:Label Text="Enter SVN location*:"  runat="server"  ID="lblsvn" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter SVN location" ID="txtsvn"  Height="29px"  Width="722px" CssClass="auto-style58"/>
                    </td>
                </tr>

                 
                <tr>
                   <td class="auto-style74" >
                        <asp:Label Text="Enter Estimated Start Date*:"  runat="server"  ID="lblesd" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter Estimated start date" ID="txtesd"  Height="29px"  Width="603px" CssClass="auto-style59"  />
                        <asp:Button ID="Button1" runat="server" Text="Select" OnClick="Button1_Click" Width="103px" CssClass="btnhome1"  />
                 
                        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged1" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                   </td> 
                </tr>

                 <tr>
                     <td class="auto-style74" >
                        <asp:Label Text="Enter Estimated finish Date*:"  runat="server"  ID="lblefd" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter Estimated finish date" ID="txtefd"  Height="29px"  Width="602px" CssClass="auto-style60"/>
                        <asp:Button ID="Button2" runat="server" Text="Select " Width="103px" OnClick="Button2_Click" CssClass="btnhome1"/>
                          <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged2" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                  </td>
                        
                    

                </tr>

                 <tr>
                    <td class="auto-style74" >
                        <asp:Label Text="Enter actual Start Date:"  runat="server"  ID="lblasd" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter Estimated start date" ID="txtasd"  Height="29px"  Width="602px" CssClass="auto-style61"/>
                        <asp:Button ID="Button3" runat="server" Text="Select" Width="101px" OnClick="Button3_Click" CssClass="btnhome1" />
                        <asp:Calendar ID="Calendar3" runat="server" OnSelectionChanged="Calendar3_SelectionChanged3" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                  </td> 

                </tr>

                 <tr>
                    <td class="auto-style74" >
                        <asp:Label Text="Enter actual finish Date:"  runat="server"  ID="lblafd" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter actual finish date" ID="txtafd"  Height="29px"  Width="602px"  CssClass="auto-style62"/>
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Select" Width="102px" CssClass="btnhome1" />
                        <asp:Calendar ID="Calendar4" runat="server" OnSelectionChanged="Calendar4_SelectionChanged4" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                  </td>

                </tr>

                 <tr>
                    <td >
                        <asp:Label Text="% work completed:"  runat="server"  ID="lblwork" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
                <asp:TextBox runat="server"  placeholder="Enter %work completed" ID="txtwork"  Height="29px"  Width="722px" CssClass="auto-style35"/>
                    </td>
                </tr>

                 <tr>
                    <td >
                        <asp:Label Text="Enter Project status:"  runat="server"  ID="lblstat" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"/>
  <asp:DropDownList ID="DropDownList2"  runat="server" Width="725px" Height="32px" style="margin-left:84px">
                        </asp:DropDownList>

                    </td>
                </tr>

                 <tr>
                    <td>
                 <asp:Button ID="Add_Project" runat="server" Text="Add Project" Width="237px" OnClick="AddProject_Click" CssClass="auto-style65" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; " Height="40px"/>
                  </td>
                     </tr>
                 </table>



        </div>
    </form>
</body>
</html>
