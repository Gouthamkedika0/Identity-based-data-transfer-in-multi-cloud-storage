<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegister.aspx.cs" Inherits="UserRegister" %>

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
            height: 56px;
        }
        .style7
        {
            width: 125px;
        }
        .style8
        {
            height: 22px;
        }
        .style9
        {
            width: 125px;
            height: 22px;
        }
        .style10
        {
            width: 38px;
        }
        .style11
        {
            height: 22px;
            width: 38px;
        }
        .style12
        {
            width: 205px;
        }
        .style13
        {
            height: 22px;
            width: 205px;
        }
        .style14
        {
            height: 31px;
        }
        .style15
        {
            width: 125px;
            height: 31px;
        }
        .style16
        {
            width: 38px;
            height: 31px;
        }
        .style17
        {
            width: 205px;
            height: 31px;
        }
        .style18
        {
            width: 186px;
        }
        .style19
        {
            width: 383px;
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
            style="margin-right:35px; width: 921px; height: 57px;">
            <table class="style6">
                <tr>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style18">
                                    <asp:Label ID="Label17" runat="server" Font-Bold="True" 
                                        Font-Size="Large" ForeColor="#FF6600">User Registration !</asp:Label>
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
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style12">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua" Text="User ID"></asp:Label>
                                </td>
                                <td class="style10">
                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" 
                                        ForeColor="Aqua" Text=":"></asp:Label>
                                </td>
                                <td class="style12">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="#FFCC00"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style8">
                                </td>
                                <td class="style9">
                                </td>
                                <td class="style11">
                                </td>
                                <td class="style13">
                                </td>
                                <td class="style8">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua" Text="User Name"></asp:Label>
                                </td>
                                <td class="style10">
                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" 
                                        ForeColor="Aqua" Text=":"></asp:Label>
                                </td>
                                <td class="style12">
                                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFFFF" 
                                        BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" 
                                        Height="21px" Width="190px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="TextBox1" ErrorMessage="*" Font-Bold="False" 
                                        Font-Size="X-Large" ForeColor="#FF9933"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style12">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua" Text="Password"></asp:Label>
                                </td>
                                <td class="style10">
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" 
                                        ForeColor="Aqua" Text=":"></asp:Label>
                                </td>
                                <td class="style12">
                                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCFFFF" 
                                        BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" 
                                        Height="21px" TextMode="Password" Width="190px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="TextBox2" ErrorMessage="*" Font-Bold="False" 
                                        Font-Size="X-Large" ForeColor="#FF9933"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style12">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua" Text="Email_ID"></asp:Label>
                                </td>
                                <td class="style10">
                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" 
                                        ForeColor="Aqua" Text=":"></asp:Label>
                                </td>
                                <td class="style12">
                                    <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCFFFF" 
                                        BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" 
                                        Height="21px" Width="190px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="TextBox3" ErrorMessage="*" Font-Bold="False" 
                                        Font-Size="X-Large" ForeColor="#FF9933"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style12">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua" Text="Gender"></asp:Label>
                                </td>
                                <td class="style10">
                                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" 
                                        ForeColor="Aqua" Text=":"></asp:Label>
                                </td>
                                <td class="style12">
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="True" 
                                        Font-Size="Small" ForeColor="#FFCC00" RepeatDirection="Horizontal" 
                                        Width="161px">
                                        <asp:ListItem Selected="True">Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="RadioButtonList1" ErrorMessage="*" Font-Bold="False" 
                                        Font-Size="X-Large" ForeColor="#FF9933"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style12">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua" Text="Mobile no"></asp:Label>
                                </td>
                                <td class="style10">
                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" 
                                        ForeColor="Aqua" Text=":"></asp:Label>
                                </td>
                                <td class="style12">
                                    <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCFFFF" 
                                        BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" 
                                        Height="21px" Width="190px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="TextBox4" ErrorMessage="*" Font-Bold="False" 
                                        Font-Size="X-Large" ForeColor="#FF9933"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style12">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua" Text="Address"></asp:Label>
                                </td>
                                <td class="style10">
                                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Large" 
                                        ForeColor="Aqua" Text=":"></asp:Label>
                                </td>
                                <td class="style12">
                                    <asp:TextBox ID="TextBox5" runat="server" BackColor="#CCFFFF" 
                                        BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" 
                                        Height="64px" TextMode="MultiLine" Width="190px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ControlToValidate="TextBox5" ErrorMessage="*" Font-Bold="False" 
                                        Font-Size="X-Large" ForeColor="#FF9933"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style14">
                                    </td>
                                <td class="style15">
                                    </td>
                                <td class="style16">
                                    </td>
                                <td class="style17">
                                    </td>
                                <td class="style14">
                                    </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style12">
                                    <asp:Button ID="Button1" runat="server" BackColor="#009900" 
                                        BorderColor="#FFFF99" BorderStyle="Double" Font-Bold="True" ForeColor="Yellow" 
                                        Height="32px" Text="Submit" Width="82px" onclick="Button1_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" BackColor="#FF3300" 
                                        BorderColor="#FFFF99" BorderStyle="Double" Font-Bold="True" ForeColor="Yellow" 
                                        Height="32px" onclick="Button2_Click" Text="Clear" Width="64px" 
                                        CausesValidation="False" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style12">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style12">
                                    <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="#CCFF66"></asp:Label>
                                </td>
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
