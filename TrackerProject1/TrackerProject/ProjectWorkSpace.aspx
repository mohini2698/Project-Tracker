&nbsp;﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectWorkSpace.aspx.cs" Inherits="TrackerProject.ProjectWorkSpace" %>

<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><title></title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script><script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js">

    </script><script type="text/javascript" language="javascript">
        $(function () {

            $(".myclass").datepicker({
        changeMonth: true,
                changeYear: true,
                dateFormat: "d-M-yy",
                yearRange: '2019:2030'
    });
        });
    </script><link href="Admincss.css" rel="stylesheet" /><style type="text/css">
        .auto-style49 {
            margin-left: 0px;
        }
        .auto-style50 {
            margin-left: 6px;
        }
        .auto-style51 {
            margin-left: 4px;
        }
        .auto-style52 {
            margin-left: 3px;
        }
        .auto-style53 {
            margin-left: 1px;
        }
        .auto-style54 {
            margin-left: 23px;
        }
        .auto-style55 {
            margin-left: 78px;
        }
        .auto-style56 {
            margin-left: 141px;
        }
        .auto-style58 {
            margin-top: 0px;
            margin-left: 0px;
        }
        .auto-style59 {
            margin-left: 18px;
        }
        .auto-style60 {
            margin-left: 74px;
        }
        .auto-style61 {
            margin-left: 320px;
        }
        </style><style type="text/css">
        .auto-style1 {
            width: 1673px;
            height: 41px;
        }
        .auto-style2 {
            height: 56px;
            margin-bottom: 0;
        }
        </style></head><body><form id="form1" runat="server">

 
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

 
        
        <div style="background:#bab7b7"  >
       <table>
           <tr>
               <td class="auto-style67" class="auto-style71">
                   <br />
               <asp:Label ID="pnid" runat="server" Text="Projectname" style="margin-left:20px" ></asp:Label>

               </td>


               <td class="auto-style60">
                   <br />
                <asp:Label ID="Label1" runat="server" Text="SVN_Location" style="margin-left:20px" ></asp:Label>
               </td>


               <td class="auto-style68">
                   <br />
                <asp:Label ID="Label2" runat="server" Text="Estimated_Start_Date" style="margin-left:20px" ></asp:Label>
               </td>


               <td class="auto-style63">
                &nbsp;&nbsp;
                <asp:Label ID="efdid" runat="server" Text="Estimated_Finish_Date" style="margin-left:20px" ></asp:Label>
               </td>


               <td class="auto-style66">
                &nbsp;&nbsp;&nbsp;&nbsp;<br />
                   &nbsp;
                <asp:Label ID="asdid" runat="server" Text="Actual_Start_Date" style="margin-left:20px" ></asp:Label>
               </td>


               <td class="auto-style56">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="afdid" runat="server" Text="Actual_Finish_Date" style="margin-left:20px" ></asp:Label>
               </td>


               <td class="auto-style69">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="pwcid" runat="server" Text="Per_WorkCompleted" style="margin-left:20px" ></asp:Label>
               </td>
               <td class="auto-style70">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="psid" runat="server" Text="ProjectStatus" style="margin-left:20px" ></asp:Label>
               </td>

           </tr>
            <tr>
                <td class="auto-style67">
                        <asp:Button ID="pnb" runat="server" Text="Button" Width="171px" CssClass="auto-style50" />
                        <br />
                </td>


                <td class="auto-style60">
                    <asp:Button ID="svnb" runat="server" Text="Button" Width="177px" CssClass="auto-style49" OnClick="svnb_Click" />
            
                </td>


                <td class="auto-style68">
                    <asp:Button ID="esdb" runat="server" CssClass="auto-style49" Text="Button" Width="162px" />
                </td>


                <td class="auto-style63">
                    <asp:Button ID="efdb" runat="server" CssClass="auto-style52" Text="Button" Width="162px" />
                </td>


                <td class="auto-style66">
                    <asp:Button ID="asdb" runat="server" CssClass="auto-style51" Text="Button" Width="165px" onClick="asdbclick"/>
                </td>


                <td class="auto-style56">
                    <asp:Button ID="afdb" runat="server" CssClass="auto-style53" Text="Button" Width="146px" OnClick="afdboclick" />
                </td>


                <td class="auto-style69">
                    <asp:Button ID="pwdb" runat="server" CssClass="auto-style53" Text="Button" Width="92px" OnClick="pwdb_Click" />
                </td>


                <td class="auto-style70">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="21px"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style54" Width="113px">
                <asp:ListItem Text="Enquiry" Value="1" />
                <asp:ListItem Text="POC" Value="2" />
                <asp:ListItem Text="R&D" Value="3" />
                <asp:ListItem Text="Training" Value="4" />
                <asp:ListItem Text="WIP" Value="5" />
                <asp:ListItem Text="Hold" Value="6" />
                <asp:ListItem Text="Closed" Value="7" />
            </asp:DropDownList> 

                    <div class="page-header">


            
                    <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style59" Height="24px" ImageUrl="~/checkbox-303113__340.png" OnClick="ImageButton3_Click" Width="32px" />
            
                </td>

            </tr>
        </table>     
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            
            
            
            &nbsp;&nbsp;
            <asp:TextBox ID="svntxt" runat="server" placeholder="Enter new Location"></asp:TextBox>
            
            
            
            
            <asp:ImageButton ID="ImageButton1" runat="server" Height="24px" ImageUrl="~/checkbox-303113__340.png" OnClick="ImageButton1_Click" Width="32px" />
            
            
            
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="pwdtxt" runat="server" CssClass="auto-style55" ></asp:TextBox>
            
            
            
            
            <asp:ImageButton ID="ImageButton2" runat="server" Height="24px" ImageUrl="~/checkbox-303113__340.png" OnClick="ImageButton2_Click" Width="32px" />
            
            
            
            
            
            
            
            
            
            
            
            
            
           
            
            
            
            
           
                        
            
            
            
           
             

            
             
            
            <br />
             
            
            
     
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="241px" OnSelectionChanged="Calendar1_SelectionChanged" CssClass="auto-style58" >
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
            
            
             
           
            <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="35px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar2_SelectionChanged" Width="239px" CssClass="auto-style58">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
           
              

              
            

            <br />
            <br />
            
 
                        </div>



        <div>
           <asp:Label ID="Label3" runat="server" Text="Add Team Member"></asp:Label>
       

        <p>
           <asp:TextBox ID="AddTMId" runat="server"></asp:TextBox>
           <asp:ImageButton ID="AddTMBtn" ImageUrl="add-button-blue-hi.png" runat="server" Height="24px" Width="47px" OnClick="AddTMBtn_Click" />
        </p>
           <p>
               <asp:Label ID="Label4" ForeColor="Green" Font-Bold="true" Text="Member Added successfully." runat="server" Visible="false" ></asp:Label>

          </p>
           
            <p>
           
                <asp:GridView ID="ShowClient" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" style="padding-left:10%; padding-top:0%">
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

           </p>

            </div>


        <div>
                                      <asp:DropDownList ID="Add_task" runat="server" CssClass="auto-style61" Height="18px" OnSelectedIndexChanged="Add_task_SelectedIndexChanged" Width="307px"></asp:DropDownList>


            <asp:GridView ID="gd1" runat="server" AutoGenerateColumns="False" ShowFooter="True" OnSelectedIndexChanged="gd1_SelectedIndexChanged" Width="800px" CellPadding="4" ForeColor="#333333" GridLines="None"   >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="UserId" HeaderText="Sr.No" />

                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>

                            <asp:TextBox ID="nametxt" runat="server" Text='<%#Eval("Name") %>'/>
                        </ItemTemplate>
                        <FooterTemplate>
                           <asp:ImageButton ID="AddTask" runat="server" OnClick="AddTask_Click" style="height: 16px" />

            
                        </FooterTemplate>
                </asp:TemplateField>
                    
            
                       
                    
                    <asp:TemplateField HeaderText="Task">
                        <ItemTemplate>

                            <asp:TextBox ID="tasktxt" runat="server" Text='<%#Eval("Task") %>'/>
                        </ItemTemplate>

                        
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Allocated Efforts Hrs">
                        <ItemTemplate>

                            <asp:TextBox ID="alltxt" runat="server" Text='<%#Eval("Allocated Efforts Hrs") %>'/>
                        </ItemTemplate>

                        
                    </asp:TemplateField>
                   
                    <asp:TemplateField  HeaderText="Status">
            <ItemTemplate>
                <asp:DropDownList ID="DropDownList1" runat="server"
                                  AppendDataBoundItems="true">
                     <asp:ListItem Value="-1">Select</asp:ListItem>
                    
                </asp:DropDownList>
            </ItemTemplate>
        </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText="Progress">
                        <ItemTemplate>

                            <asp:TextBox ID="progresstxt" runat="server" Text='<%#Eval("Progress") %>'/>
                        </ItemTemplate>

                        
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Estimated Start Date">
                        <ItemTemplate>

                            <asp:TextBox ID="esdtxt" CssClass="myclass" runat="server" Text='<%#Eval("Estimated Start Date") %>'/>
                        </ItemTemplate>

                        
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="Estimated End Date">
                        <ItemTemplate>

                            <asp:TextBox ID="endtxt" CssClass="myclass" runat="server" Text='<%#Eval("Estimated End Date") %>'/>
                        </ItemTemplate>

                        
                    </asp:TemplateField>

                   
                    

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


            </div>
        
        

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectTrackerConnectionString5 %>" DeleteCommand="DELETE FROM [ProjectTask] WHERE [TaskId] = @TaskId" InsertCommand="INSERT INTO [ProjectTask] ([Taskname], [Allocated_hrs], [Actual_hrs], [Status], [Per_WorkDone], [Estimated_Start_Date], [Estimated_Finish_Date], [Actual_Start_Date], [Actual_Finish_Date], [ProjectId], [Id]) VALUES (@Taskname, @Allocated_hrs, @Actual_hrs, @Status, @Per_WorkDone, @Estimated_Start_Date, @Estimated_Finish_Date, @Actual_Start_Date, @Actual_Finish_Date, @ProjectId, @Id)" SelectCommand="SELECT * FROM [ProjectTask]" UpdateCommand="UPDATE [ProjectTask] SET [Taskname] = @Taskname, [Allocated_hrs] = @Allocated_hrs, [Actual_hrs] = @Actual_hrs, [Status] = @Status, [Per_WorkDone] = @Per_WorkDone, [Estimated_Start_Date] = @Estimated_Start_Date, [Estimated_Finish_Date] = @Estimated_Finish_Date, [Actual_Start_Date] = @Actual_Start_Date, [Actual_Finish_Date] = @Actual_Finish_Date, [ProjectId] = @ProjectId, [Id] = @Id WHERE [TaskId] = @TaskId">
            <DeleteParameters>
                <asp:Parameter Name="TaskId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Taskname" Type="String" />
                <asp:Parameter Name="Allocated_hrs" Type="Decimal" />
                <asp:Parameter Name="Actual_hrs" Type="Decimal" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Per_WorkDone" Type="Double" />
                <asp:Parameter DbType="Date" Name="Estimated_Start_Date" />
                <asp:Parameter DbType="Date" Name="Estimated_Finish_Date" />
                <asp:Parameter DbType="Date" Name="Actual_Start_Date" />
                <asp:Parameter DbType="Date" Name="Actual_Finish_Date" />
                <asp:Parameter Name="ProjectId" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Taskname" Type="String" />
                <asp:Parameter Name="Allocated_hrs" Type="Decimal" />
                <asp:Parameter Name="Actual_hrs" Type="Decimal" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Per_WorkDone" Type="Double" />
                <asp:Parameter DbType="Date" Name="Estimated_Start_Date" />
                <asp:Parameter DbType="Date" Name="Estimated_Finish_Date" />
                <asp:Parameter DbType="Date" Name="Actual_Start_Date" />
                <asp:Parameter DbType="Date" Name="Actual_Finish_Date" />
                <asp:Parameter Name="ProjectId" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="TaskId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        

        
            &nbsp;</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        </p>
        
        

                  
        

            <br />
            <br />
            <br />

            <asp:GridView ID="viewtask" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="viewtask_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Username" HeaderText="Username" />
                        <asp:BoundField DataField="Taskname" HeaderText="Taskname" />
                        <asp:BoundField DataField="Estimated_Start_Date" HeaderText="Estimated Start Date" />
                        <asp:BoundField DataField="Estimated_Finish_Date" HeaderText="Estimated Finish Date" />
                        <asp:BoundField DataField="Actual_Start_Date" HeaderText="Actual Start Date" />
                        <asp:BoundField DataField="Actual_Finish_Date" HeaderText="Actual Finish Date" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        <asp:BoundField DataField="Per_WorkDone" HeaderText="Progress" />
                        <asp:BoundField DataField="Actual_hrs" HeaderText="Actual Hrs" />
                        <asp:BoundField DataField="Allocated_hrs" HeaderText="Allocated Hrs" />

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
  
        
            <p>
    &nbsp;</p>




            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TaskId" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" ShowFooter="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="TaskId" InsertVisible="False" SortExpression="TaskId">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TaskId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("TaskId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Username" SortExpression="Username">
                        
                        <ItemTemplate>
                            <asp:Label ID="Label13" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Taskname" SortExpression="Taskname">
                        
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Taskname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Allocated_hrs" SortExpression="Allocated_hrs">
                       
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Allocated_hrs") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Actual_hrs" SortExpression="Actual_hrs">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Actual_hrs") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEdithrs" runat="server" ErrorMessage="Hrs is a required Field"
                                ControlToValidate="TextBox3" Text="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Actual_hrs") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status" SortExpression="Status">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDown2" runat="server" SelectedValue='<%# Bind("Status") %>'>
                               <asp:ListItem>Select</asp:ListItem>
                     <asp:ListItem>Enquiry</asp:ListItem>
                     <asp:ListItem>POC</asp:ListItem>
                     <asp:ListItem>R&D</asp:ListItem>
                     <asp:ListItem>Training</asp:ListItem>
                     <asp:ListItem>WIP</asp:ListItem>
                     <asp:ListItem>Hold</asp:ListItem>
                     <asp:ListItem>Closed</asp:ListItem>
                     


                    
                
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Per_WorkDone" SortExpression="Per_WorkDone">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Per_WorkDone") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditwd" runat="server" ErrorMessage="Hrs is a required Field"
                                ControlToValidate="TextBox5" Text="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Per_WorkDone") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Estimated_Start_Date" SortExpression="Estimated_Start_Date">
                       
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Estimated_Start_Date","{0:dd-MMM-yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Estimated_Finish_Date" SortExpression="Estimated_Finish_Date">
                       
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("Estimated_Finish_Date","{0:dd-MMM-yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Actual_Start_Date" SortExpression="Actual_Start_Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="myclass" Text='<%# Bind("Actual_Start_Date") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditsd" runat="server" ErrorMessage="Hrs is a required Field"
                                ControlToValidate="TextBox8" Text="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("Actual_Start_Date","{0:dd-MMM-yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Actual_Finish_Date" SortExpression="Actual_Finish_Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" CssClass="myclass" Text='<%# Bind("Actual_Finish_Date") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditfd" runat="server" ErrorMessage="Hrs is a required Field"
                                ControlToValidate="TextBox9" Text="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server"  Text='<%# Bind("Actual_Finish_Date","{0:dd-MMM-yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                   
                    
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectTrackerConnectionString5 %>" DeleteCommand="DELETE FROM [ProjectTask] WHERE [TaskId] = @TaskId" InsertCommand="INSERT INTO [ProjectTask] ([Taskname], [Allocated_hrs], [Actual_hrs], [Status], [Per_WorkDone], [Estimated_Start_Date], [Estimated_Finish_Date], [Actual_Start_Date], [Actual_Finish_Date], [ProjectId], [Id], [Username]) VALUES (@Taskname, @Allocated_hrs, @Actual_hrs, @Status, @Per_WorkDone, @Estimated_Start_Date, @Estimated_Finish_Date, @Actual_Start_Date, @Actual_Finish_Date, @ProjectId, @Id, @Username)" SelectCommand="SELECT * FROM [ProjectTask]" UpdateCommand="UPDATE [ProjectTask] SET [Taskname] = @Taskname, [Allocated_hrs] = @Allocated_hrs, [Actual_hrs] = @Actual_hrs, [Status] = @Status, [Per_WorkDone] = @Per_WorkDone, [Estimated_Start_Date] = @Estimated_Start_Date, [Estimated_Finish_Date] = @Estimated_Finish_Date, [Actual_Start_Date] = @Actual_Start_Date, [Actual_Finish_Date] = @Actual_Finish_Date, [ProjectId] = @ProjectId, [Id] = @Id, [Username] = @Username WHERE [TaskId] = @TaskId">
                <DeleteParameters>
                    <asp:Parameter Name="TaskId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Taskname" Type="String" />
                    <asp:Parameter Name="Allocated_hrs" Type="Decimal" />
                    <asp:Parameter Name="Actual_hrs" Type="Decimal" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="Per_WorkDone" Type="Double" />
                    <asp:Parameter DbType="Date" Name="Estimated_Start_Date" />
                    <asp:Parameter DbType="Date" Name="Estimated_Finish_Date" />
                    <asp:Parameter DbType="Date" Name="Actual_Start_Date" />
                    <asp:Parameter DbType="Date" Name="Actual_Finish_Date" />
                    <asp:Parameter Name="ProjectId" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Taskname" Type="String" />
                    <asp:Parameter Name="Allocated_hrs" Type="Decimal" />
                    <asp:Parameter Name="Actual_hrs" Type="Decimal" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="Per_WorkDone" Type="Double" />
                    <asp:Parameter DbType="Date" Name="Estimated_Start_Date" />
                    <asp:Parameter DbType="Date" Name="Estimated_Finish_Date" />
                    <asp:Parameter DbType="Date" Name="Actual_Start_Date" />
                    <asp:Parameter DbType="Date" Name="Actual_Finish_Date" />
                    <asp:Parameter Name="ProjectId" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="TaskId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
  
        
    </form>
</body>
</html>

