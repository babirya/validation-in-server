<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="valid.aspx.cs" Inherits="validator.valid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 494px;
        } 
        .er{

            color:red; 
            font-family:Arial; 
        }
    </style>
</head>
<body style="height: 415px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="nom"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="148px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="er" ErrorMessage="nom est obligatoire" ValidationGroup="g"></asp:RequiredFieldValidator>
        <p>
            <asp:Label ID="Label2" runat="server" Text="prenom"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="er" ErrorMessage="prenom est obigatoire" ValidationGroup="g"></asp:RequiredFieldValidator>
        </p>
        <asp:Label ID="Label3" runat="server" Text="noteBac"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="er" ErrorMessage="note est obligatoire" ValidationGroup="g"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="er" ErrorMessage="note entre 0-20" MaximumValue="20" MinimumValue="0" Type="Double" ValidationGroup="g" ControlToValidate="TextBox3"></asp:RangeValidator>
        <p>
            <asp:Label ID="Label4" runat="server" Text="age"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="er" ErrorMessage="age est olbigatoire" ValidationGroup="g"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox4" CssClass="er" ErrorMessage="age plus ou egale 18" ValidationGroup="g" ValueToCompare="18" Operator="GreaterThanEqual"></asp:CompareValidator>
        </p>
        <asp:Label ID="Label5" runat="server" Text="password"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" CssClass="er" ErrorMessage="password est obligatoire" ValidationGroup="g"></asp:RequiredFieldValidator>
        <p>
            <asp:Label ID="Label6" runat="server" Text="confirm password"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" CssClass="er" ErrorMessage="confrim passowd est obligatoire" ValidationGroup="g"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" CssClass="er" ErrorMessage="doit etre la meme comme password" ValidationGroup="g"></asp:CompareValidator>
        </p>
        <asp:Button ID="Button1" runat="server" style="margin-left: 21px" Text="Sign" ValidationGroup="g" Width="84px" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 46px" Text="afficher " Width="86px" />
        <asp:Panel ID="Panel1" runat="server" BackColor="#999999" Height="182px">
            <asp:Label ID="Label7" runat="server"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
