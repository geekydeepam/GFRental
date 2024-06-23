<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIN.aspx.cs" Inherits="GFRental.SignIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center">
    <asp:Label ID="Label1" runat="server" Font-Names="Ink Free" Font-Size="XX-Large" Text="Sign In"></asp:Label>
    <br />
    <br />
    <table align="center" cellpadding="2" style="border-collapse: collapse; width: 906px; font-family: 'Ink Free';">
        <tr>
            <td class="text-end" style="width: 426px">User Id</td>
            <td class="text-start" style="width: 453px">
                <asp:TextBox ID="TextBox1" runat="server" Width="178px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="height: 15px; width: 426px"></td>
            <td class="text-start" style="width: 453px; height: 15px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="White" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="User ID is Required" ForeColor="Red">Enter UserID first</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="width: 426px">Password</td>
            <td class="text-start" style="width: 453px">
                <asp:TextBox ID="TextBox2" runat="server" Width="178px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-end" style="width: 426px">&nbsp;</td>
            <td class="text-start" style="width: 453px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Password is Required" ForeColor="Red">Enter Password First</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <asp:Button ID="btnSignIn" runat="server" Text="Sign In" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                &nbsp;Or If You are new,
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0066FF" NavigateUrl="SignUP.aspx" Font-Bold="True" Font-Size="Large">Sign Up</asp:HyperLink>
&nbsp;now</td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Underline="True" ForeColor="Red" />
            </td>
        </tr>
        </table>
</div>
</asp:content>