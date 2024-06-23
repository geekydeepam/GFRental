<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUP.aspx.cs" Inherits="GFRental.SignUP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center">
        <asp:Label ID="Label1" runat="server" Font-Names="Ink Free" Font-Size="XX-Large" Text="Sign Up"></asp:Label>
        <br />
        <br />
    <table align="center" cellpadding="2" style="border-collapse: collapse; width: 906px; font-family: 'Ink Free';">
        <tr>
            <td class="text-end" style="width: 426px">Name*(real Name)</td>
            <td class="text-start" style="width: 453px">
                <asp:TextBox ID="TextBox1" runat="server" Width="239px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="height: 15px; width: 426px"></td>
            <td class="text-start" style="width: 453px; height: 15px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="White" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Name is Required" ForeColor="Red">Enter Name first</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="width: 426px">Create Password*</td>
            <td class="text-start" style="width: 453px">
                <asp:TextBox ID="TextBox2" runat="server" Width="178px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="width: 426px">&nbsp;</td>
            <td class="text-start" style="width: 453px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Password is Required" ForeColor="Red">Enter Password First</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="width: 426px">Confirm Password*</td>
            <td class="text-start" style="width: 453px">
                <asp:TextBox ID="TextBox3" runat="server" Width="178px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="width: 426px">&nbsp;</td>
            <td class="text-start" style="width: 453px">
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Password is Required" ForeColor="Red">Enter Password First</asp:RequiredFieldValidator>
            &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Confirm Password Does not Matched" ForeColor="Red">Password does not Match</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="width: 426px">Mobile No.*</td>
            <td class="text-start" style="width: 453px">
                <asp:TextBox ID="TextBox4" runat="server" Width="178px" MaxLength="10" TextMode="Phone"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="width: 426px; height: 31px;"></td>
            <td class="text-start" style="width: 453px; height: 31px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Mobile Number is Required" ForeColor="Red">Enter Mobile Number First</asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Mobile Number Invaid" ForeColor="Red" ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$">Enter Mobile No.</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="width: 426px">Email Address*</td>
            <td class="text-start" style="width: 453px">
                <asp:TextBox ID="TextBox5" runat="server" Width="178px" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="width: 426px; height: 24px;"></td>
            <td class="text-start" style="width: 453px; height: 24px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Email Address is Required" ForeColor="Red">Enter Email Address First</asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter Valid Email </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="width: 426px">Your Age*</td>
            <td class="text-start" style="width: 453px">
                <asp:TextBox ID="TextBox6" runat="server" Width="178px" MaxLength="2"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="width: 426px">&nbsp;</td>
            <td class="text-start" style="width: 453px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Age is Required" ForeColor="Red">Enter Age First</asp:RequiredFieldValidator>
            &nbsp;&nbsp;
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Age Should be 16-50, else you are not Eligible" ForeColor="Red" MaximumValue="50" MinimumValue="16" Type="Integer">Age 16-50 else not Eligible</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="width: 426px; height: 12px;"></td>
            <td class="text-start" style="width: 453px; height: 12px;">
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" CssClass="btn-primary,btn-light" />
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                &nbsp;Or If You are already registerd, just <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0066FF" NavigateUrl="SignIN.aspx" Font-Bold="True" Font-Size="Large">Sign In</asp:HyperLink>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Underline="True" ForeColor="Red" />
            </td>
        </tr>
        </table>
    </div>
</asp:Content>
