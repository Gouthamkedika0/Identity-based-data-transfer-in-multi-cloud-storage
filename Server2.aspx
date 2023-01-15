<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Server2.aspx.cs" Inherits="Server2" %>

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
            width: 412px;
        }
        .style20
        {
            width: 134px;
        }
        .style21
        {
            height: 212px;
        }
        .style22
        {
            width: 125px;
            height: 212px;
        }
        .style24
        {
            width: 205px;
            height: 212px;
        }
        .style25
        {
            height: 34px;
        }
        .style26
        {
            width: 125px;
            height: 34px;
        }
        .style27
        {
            width: 205px;
            height: 34px;
        }
        .style28
        {
            width: 100%;
        }
        .style29
        {
            width: 94px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div id="templatemo_container">
	2<!-- Free Website Template from www.TemplateMo.com --><div id="templatemo_header_panel">
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
                        <table class="style28">
                            <tr>
                                <td class="style29">
                                    <asp:LinkButton ID="LinkButton1" runat="server" 
                                        PostBackUrl="~/ServerLogin.aspx">Log Out</asp:LinkButton>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td class="style20">
                                    <asp:Label ID="Label17" runat="server" Font-Bold="True" 
                                        Font-Size="Large" ForeColor="#FF6600">View Files !</asp:Label>
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
                                        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                                        CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" 
                                        onrowcommand="GridView1_RowCommand" Width="356px" 
                                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                                        <RowStyle BackColor="White" ForeColor="#333333" />
                                        <Columns>
                                            <asp:BoundField DataField="FileID" HeaderText="FileID" 
                                                SortExpression="FileID" />
                                            <asp:BoundField DataField="Filename" HeaderText="Filename" 
                                                SortExpression="Filename" />
                                            <asp:BoundField DataField="Server2Status" HeaderText="Server2Status" 
                                                SortExpression="Server2Status" />
                                            <asp:ButtonField CommandName="Select" HeaderText="Accept" ShowHeader="True" 
                                                Text="Accept" />
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#333333" />
                                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:IdentityCon %>" 
                                        
                                        SelectCommand="SELECT [FileID], [Filename], [Server2Status] FROM [splitbl]">
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
