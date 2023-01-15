<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userfiles.aspx.cs" Inherits="Userfiles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Identity-Based Data Transfering in Multi-Cloud Storage</title>
<meta name="keywords" content="free website templates, personal portfolio, CSS, HTML" />
<meta name="description" content="personal portfolio is a free website template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 575px;
        }
        .style2
        {
            width: 161px;
        }
        .style3
        {
            width: 644px;
        }
        .style6
        {
            width: 100%;
            height: 57px;
        }
        .style7
        {
            width: 125px;
        }
        .style12
        {
            width: 205px;
        }
        .style14
        {
            width: 362px;
        }
        .style21
        {
            height: 185px;
        }
        .style22
        {
            width: 125px;
            height: 185px;
        }
        .style24
        {
            width: 205px;
            height: 185px;
        }
        .style25
        {
            height: 35px;
        }
        .style26
        {
            width: 125px;
            height: 35px;
        }
        .style27
        {
            width: 205px;
            height: 35px;
        }
        .style28
        {
            width: 222px;
        }
        .style29
        {
            width: 100%;
        }
        .style31
        {
            width: 47px;
        }
        .style33
        {
            width: 15px;
        }
        .style34
        {
            width: 144px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div id="templatemo_container">
	<!-- Free Website Template from www.TemplateMo.com -->
	<div id="templatemo_header_panel">
    	<div id="site_title1">
    	<br />
    	
        	<h2 style="text-align: center; color: #CCFF33; font-family: 'Adobe Gothic Std B';">
                Identity-Based Data Transfering in Multi-Cloud Storage</h2>
        </div>
    </div> <!-- end of header panel -->
    
    <div id="templatemo_menu">
    	<ul>
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="UserLogin.aspx">User</a></li>
            <li><a href="OwnerLogin.aspx">Data Owner</a></li>
            <li><a href="VerifierLogin.aspx">Verifier</a></li>
            <li><a href="ServerLogin.aspx">Cloud Server</a></li>
        </ul>
    
    </div> <!-- end of menu -->
    
    <div id="templatemo_top_panel">
        <div class="templatemo_btn_01" 
            style="margin-right:35px; width: 921px; height: 58px;">
            <table class="style6">
                <tr>
                    <td class="style14">
                        <table class="style29">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Userfiles.aspx">View Files</asp:LinkButton>
                                </td>
                                <td class="style33">
                                    &nbsp;</td>
                                <td class="style31">
                                    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/UserLogin.aspx">Log Out</asp:LinkButton>
                                </td>
                                <td class="style34">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td class="style28">
                                    <asp:Label ID="Label17" runat="server" Font-Bold="True" 
                                        Font-Size="Large" ForeColor="Yellow">Welcome !</asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label21" runat="server" Font-Bold="True" 
                                        Font-Size="Large" ForeColor="#FF99FF"></asp:Label>
                                </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </div> 
    <div id="templatemo_bottom_panel">
    
    	<table class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Panel ID="Panel1" runat="server" Height="565px" BorderStyle="Ridge">
                        <table class="style6">
                            <tr>
                                <td class="style25">
                                    </td>
                                <td class="style26">
                                    </td>
                                <td class="style27">
                                    </td>
                                <td class="style25">
                                    </td>
                            </tr>
                            <tr>
                                <td class="style21">
                                </td>
                                <td class="style22">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                                        CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None" 
                                        Width="251px" onrowcommand="GridView1_RowCommand">
                                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                        <Columns>
                                            <asp:BoundField DataField="FileID" HeaderText="FileID" 
                                                SortExpression="FileID" />
                                            <asp:BoundField DataField="Filename" HeaderText="Filename" 
                                                SortExpression="Filename" />
                                            <asp:BoundField DataField="FileVerify" HeaderText="FileVerify" 
                                                SortExpression="FileVerify" />
                                            <asp:ButtonField CommandName="Select" HeaderText="View File" ShowHeader="True" 
                                                Text="View File" />
                                        </Columns>
                                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:IdentityCon %>" 
                                        
                                        
                                        SelectCommand="SELECT [FileID], [Filename], [FileVerify] FROM [splitbl] WHERE ([FileVerify] = @FileVerify)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="YES" Name="FileVerify" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td class="style24">
                                </td>
                                <td class="style21">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td class="style12">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
        <br />
        </div> <!-- end of bottom panel -->
    
	<div id="templatemo_footer">    
    	
	</div> <!-- end of footer -->
    <!-- Free Website Templates @ TemplateMo.com -->
</div> <!-- end of container -->
    </form>
</body>
</html>