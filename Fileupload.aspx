<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fileupload.aspx.cs" Inherits="Fileupload" %>

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
            width: 88px;
        }
        .style8
        {
            height: 61px;
        }
        .style9
        {
            width: 88px;
            height: 61px;
        }
        .style10
        {
            width: 38px;
        }
        .style11
        {
            height: 61px;
            width: 38px;
        }
        .style12
        {
            width: 205px;
        }
        .style13
        {
            height: 61px;
            width: 205px;
        }
        .style14
        {
            width: 412px;
        }
        .style16
        {
            height: 32px;
        }
        .style17
        {
            width: 88px;
            height: 32px;
        }
        .style18
        {
            width: 38px;
            height: 32px;
        }
        .style19
        {
            width: 205px;
            height: 32px;
        }
        .style23
        {
            height: 11px;
        }
        .style24
        {
            width: 88px;
            height: 11px;
        }
        .style25
        {
            width: 38px;
            height: 11px;
        }
        .style26
        {
            width: 205px;
            height: 11px;
        }
        .style27
        {
            height: 14px;
        }
        .style28
        {
            width: 88px;
            height: 14px;
        }
        .style29
        {
            width: 38px;
            height: 14px;
        }
        .style30
        {
            width: 205px;
            height: 14px;
        }
        .style31
        {
            width: 259px;
        }
        .style32
        {
            height: 61px;
            width: 117px;
        }
        .style33
        {
            width: 117px;
        }
        .style34
        {
            height: 11px;
            width: 117px;
        }
        .style35
        {
            height: 32px;
            width: 117px;
        }
        .style36
        {
            height: 14px;
            width: 117px;
        }
        .style21
        {
            width: 100%;
        }
        .style22
        {
            width: 23px;
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
                        <table class="style21">
                            <tr>
                                <td style="text-align: left">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                        PostBackUrl="~/Fileupload.aspx" Width="89px">File Upload</asp:LinkButton>
                                </td>
                                <td class="style22">
                                    &nbsp;</td>
                                <td class="style22">
                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                        PostBackUrl="~/OwnerLogin.aspx" Width="65px"> Log Out</asp:LinkButton>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td class="style31">
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
                                <td class="style32">
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
                                <td class="style33">
                                    &nbsp;</td>
                                <td class="style7">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua" Text="File ID"></asp:Label>
                                </td>
                                <td class="style10">
                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" 
                                        ForeColor="Aqua" Text=":"></asp:Label>
                                </td>
                                <td class="style12">
                                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style33">
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
                                <td class="style33">
                                    &nbsp;</td>
                                <td class="style7">
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua" Text="Subject"></asp:Label>
                                </td>
                                <td class="style10">
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" 
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
                                <td class="style34">
                                    </td>
                                <td class="style24">
                                    </td>
                                <td class="style25">
                                    </td>
                                <td class="style26">
                                    </td>
                                <td class="style23">
                                    </td>
                            </tr>
                            <tr>
                                <td class="style35">
                                    &nbsp;</td>
                                <td class="style17">
                                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua" Text="Upload File"></asp:Label>
                                </td>
                                <td class="style18">
                                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Large" 
                                        ForeColor="Aqua" Text=":"></asp:Label>
                                </td>
                                <td class="style19">
                                    <asp:FileUpload ID="FileUpload1" runat="server" Font-Bold="True" />
                                </td>
                                <td class="style16">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="FileUpload1" ErrorMessage="*" Font-Bold="False" 
                                        Font-Size="X-Large" ForeColor="#FF9933"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style36">
                                </td>
                                <td class="style28">
                                </td>
                                <td class="style29">
                                </td>
                                <td class="style30">
                                </td>
                                <td class="style27">
                                </td>
                            </tr>
                            <tr>
                                <td class="style33">
                                    &nbsp;</td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style12">
                                    <asp:Button ID="Button1" runat="server" BackColor="#009900" 
                                        BorderColor="#FFFF99" BorderStyle="Double" Font-Bold="True" ForeColor="Yellow" 
                                        Height="32px" Text="Upload" Width="82px" onclick="Button1_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" BackColor="#FF3300" 
                                        BorderColor="#FFFF99" BorderStyle="Double" Font-Bold="True" ForeColor="Yellow" 
                                        Height="32px" onclick="Button2_Click" Text="Reset" Width="64px" 
                                        CausesValidation="False" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style33">
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
                                <td class="style33">
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