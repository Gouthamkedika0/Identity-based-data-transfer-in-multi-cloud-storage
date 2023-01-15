<%@ Page Language="C#" AutoEventWireup="true" CodeFile="verifierdecrypt.aspx.cs" Inherits="verifierdecrypt" %>

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
        .style3
        {
            width: 869px;
        }
        .style6
        {
            width: 100%;
            height: 57px;
        }
        .style7
        {
            width: 94px;
        }
        .style10
        {
            width: 38px;
        }
        .style12
        {
            width: 262px;
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
            width: 94px;
            height: 32px;
        }
        .style18
        {
            width: 38px;
            height: 32px;
        }
        .style19
        {
            width: 262px;
            height: 32px;
        }
        .style23
        {
            height: 11px;
        }
        .style24
        {
            width: 94px;
            height: 11px;
        }
        .style25
        {
            width: 38px;
            height: 11px;
        }
        .style26
        {
            width: 262px;
            height: 11px;
        }
        .style27
        {
            height: 14px;
        }
        .style28
        {
            width: 21px;
            height: 14px;
        }
        .style29
        {
            width: 38px;
            height: 14px;
        }
        .style30
        {
            width: 262px;
            height: 14px;
        }
        .style31
        {
            width: 259px;
        }
        .style33
        {
            width: 61px;
        }
        .style34
        {
            height: 11px;
            width: 61px;
        }
        .style35
        {
            height: 32px;
            width: 61px;
        }
        .style36
        {
            height: 14px;
            width: 61px;
        }
        .style37
        {
            height: 8px;
            width: 61px;
        }
        .style38
        {
            width: 94px;
            height: 8px;
        }
        .style39
        {
            width: 38px;
            height: 8px;
        }
        .style40
        {
            width: 262px;
            height: 8px;
        }
        .style41
        {
            height: 8px;
        }
        .style42
        {
            width: 28px;
            height: 8px;
        }
        .style43
        {
            width: 28px;
        }
        .style44
        {
            width: 28px;
            height: 11px;
        }
        .style45
        {
            width: 28px;
            height: 32px;
        }
        .style46
        {
            width: 28px;
            height: 14px;
        }
        .style47
        {
            width: 77px;
        }
        .style48
        {
            width: 85px;
            height: 8px;
        }
        .style49
        {
            width: 85px;
        }
        .style50
        {
            width: 85px;
            height: 11px;
        }
        .style51
        {
            width: 85px;
            height: 32px;
        }
        .style52
        {
            width: 85px;
            height: 14px;
        }
        .style53
        {
            width: 213px;
        }
        .style54
        {
            width: 94px;
            height: 14px;
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
                        <table class="style28">
                            <tr>
                                <td class="style29">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                        PostBackUrl="~/verifierfiles.aspx" Width="77px">View Files</asp:LinkButton>
                                </td>
                                <td class="style30">
                                    &nbsp;</td>
                                <td class="style31">
                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                        PostBackUrl="~/VerifierLogin.aspx" Width="65px"> Log Out</asp:LinkButton>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td class="style53">
                                    <asp:Label ID="Label17" runat="server" Font-Bold="True" 
                                        Font-Size="Large" ForeColor="Yellow">Decrypt the File Blocks !</asp:Label>
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
                <td class="style47">
                    <asp:ListBox ID="ListBox1" runat="server" Height="16px" Visible="False" 
                        Width="16px"></asp:ListBox>
                </td>
                <td class="style3">
                    <asp:Panel ID="Panel1" runat="server" Height="565px" BorderStyle="Ridge">
                        <table class="style6">
                            <tr>
                                <td class="style37">
                                </td>
                                <td class="style38">
                                </td>
                                <td class="style39">
                                </td>
                                <td class="style40">
                                </td>
                                <td class="style42">
                                </td>
                                <td class="style48">
                                    &nbsp;</td>
                                <td class="style41">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style33">
                                    &nbsp;</td>
                                <td class="style7">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua" Text="File Name"></asp:Label>
                                </td>
                                <td class="style10">
                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" 
                                        ForeColor="Aqua" Text=":"></asp:Label>
                                </td>
                                <td class="style12">
                                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua"></asp:Label>
                                </td>
                                <td class="style43">
                                    &nbsp;</td>
                                <td class="style49">
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
                                    &nbsp;</td>
                                <td class="style43">
                                    &nbsp;</td>
                                <td class="style49">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style33">
                                    &nbsp;</td>
                                <td class="style7">
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua" Text="Server 1"></asp:Label>
                                </td>
                                <td class="style10">
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" 
                                        ForeColor="Aqua" Text=":"></asp:Label>
                                </td>
                                <td class="style12">
                                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFFFF" 
                                        BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" 
                                        Height="78px" Width="307px" TextMode="MultiLine"></asp:TextBox>
                                </td>
                                <td class="style43">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="TextBox1" ErrorMessage="*" Font-Bold="False" 
                                        Font-Size="X-Large" ForeColor="#FF9933"></asp:RequiredFieldValidator>
                                </td>
                                <td class="style49">
                                    <asp:Label ID="Label24" runat="server" Font-Bold="True" ForeColor="#CCCCFF">Decrypt Key for Server1</asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="188px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <br />
                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
                                        onclick="LinkButton3_Click">Get Your 1st Server Decryption Key</asp:LinkButton>
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
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" BackColor="#9900FF" 
                                        BorderColor="#FFFF99" BorderStyle="Double" Font-Bold="True" ForeColor="Yellow" 
                                        Height="32px" onclick="Button3_Click" Text="Decrypt Server 1" Width="116px" />
                                    </td>
                                <td class="style44">
                                    </td>
                                <td class="style50">
                                    &nbsp;</td>
                                <td class="style23">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style35">
                                    &nbsp;</td>
                                <td class="style17">
                                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua" Text="Server 2"></asp:Label>
                                </td>
                                <td class="style18">
                                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Large" 
                                        ForeColor="Aqua" Text=":"></asp:Label>
                                </td>
                                <td class="style19">
                                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCFFFF" 
                                        BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" 
                                        Height="78px" TextMode="MultiLine" Width="307px"></asp:TextBox>
                                </td>
                                <td class="style45">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="TextBox2" ErrorMessage="*" Font-Bold="False" 
                                        Font-Size="X-Large" ForeColor="#FF9933"></asp:RequiredFieldValidator>
                                </td>
                                <td class="style51">
                                    <asp:Label ID="Label25" runat="server" Font-Bold="True" ForeColor="#CCCCFF">Decrypt Key for Server2</asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                </td>
                                <td class="style16">
                                    <asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="188px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <br />
                                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                                        onclick="LinkButton4_Click">Get Your 2nd Server Decryption Key</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="style36">
                                </td>
                                <td class="style54">
                                </td>
                                <td class="style29">
                                </td>
                                <td class="style30">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button4" runat="server" BackColor="#9900FF" 
                                        BorderColor="#FFFF99" BorderStyle="Double" Font-Bold="True" ForeColor="Yellow" 
                                        Height="32px" onclick="Button4_Click" Text="Decrypt Server 2" Width="116px" />
                                </td>
                                <td class="style46">
                                </td>
                                <td class="style52">
                                    &nbsp;</td>
                                <td class="style27">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style36">
                                    &nbsp;</td>
                                <td class="style54">
                                    <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Aqua" Text="Server 3"></asp:Label>
                                </td>
                                <td class="style29">
                                    <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Large" 
                                        ForeColor="Aqua" Text=":"></asp:Label>
                                </td>
                                <td class="style30">
                                    <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCFFFF" 
                                        BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" 
                                        Height="78px" TextMode="MultiLine" Width="307px"></asp:TextBox>
                                </td>
                                <td class="style46">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="TextBox3" ErrorMessage="*" Font-Bold="False" 
                                        Font-Size="X-Large" ForeColor="#FF9933"></asp:RequiredFieldValidator>
                                </td>
                                <td class="style52">
                                    <asp:Label ID="Label26" runat="server" Font-Bold="True" ForeColor="#CCCCFF">Decrypt Key for Server3</asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                </td>
                                <td class="style27">
                                    <asp:TextBox ID="TextBox6" runat="server" Height="28px" Width="188px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <br />
                                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" 
                                        onclick="LinkButton5_Click">Get Your 3rd Server Decryption Key</asp:LinkButton>
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
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button5" runat="server" BackColor="#9900FF" 
                                        BorderColor="#FFFF99" BorderStyle="Double" Font-Bold="True" ForeColor="Yellow" 
                                        Height="32px" onclick="Button5_Click" Text="Decrypt Server 3" Width="116px" />
                                </td>
                                <td class="style43">
                                    &nbsp;</td>
                                <td class="style49">
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
                                    &nbsp;</td>
                                <td class="style43">
                                    &nbsp;</td>
                                <td class="style49">
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
                                    <asp:Button ID="Button1" runat="server" BackColor="#FF6600" 
                                        BorderColor="#FFFF99" BorderStyle="Double" Font-Bold="True" ForeColor="Yellow" 
                                        Height="32px" onclick="Button1_Click" Text="Finish" Width="137px" />
                                </td>
                                <td class="style43">
                                    &nbsp;</td>
                                <td class="style49">
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
                                <td class="style43">
                                    &nbsp;</td>
                                <td class="style49">
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
