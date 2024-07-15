<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="webform.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> bro what is this</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:TextBox ID="txtName"  runat= "server"></asp:TextBox>

    <asp:TextBox ID="txtTextValue" Text="Hello World" runat="server"></asp:TextBox>
    <asp:TextBox ID="txtComment" TextMode="multiline" runat="server"></asp:TextBox> 

    <asp:CheckBox ID="chkIsStudent" runat="server"/>
    
        <asp:RadioButton ID="rdMale" GroupName="Gender"
runat="server" />
        <asp:RadioButton ID="rdFemale" GroupName="Gender"
runat="server" />

<%--           <asp:DropDownList ID="ddlDepartment" runat="server">
        <asp:ListItem Text ="Select" Value="0"></asp:ListItem>
        <asp:ListItem Text="Computer Science" Value="CS"</asp:ListItem>
        <asp:ListItem Text="Electrical Engineering" Value="EE"</asp:ListItem>
        <asp:ListItem Text="Business Administration" Value="BBA"</asp:ListItem>
        <asp:ListItem Text="Civil Engineering" Value="CV"</asp:ListItem>
        </asp: DropDownList>
        <asp:Button ID= "btnSave"; Text="Save Form"runat= "server" />--%>
        <div>
        </div>
    </form>
</body>
</html>

