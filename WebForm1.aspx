<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AT6_Exemple1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                runat="server" ErrorMessage="Champ de saisie obligatoire"
                ForeColor="Red" ControlToValidate="TextBox1"/>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ErrorMessage="Age entre 0 et 100" ForeColor="Red" 
                MaximumValue="100" MinimumValue="0" Type="Integer" ControlToValidate="TextBox2"/>
            <br />
            
         <asp:Label ID="Label5" runat="server" Text="Email" AccessKey="P" Width="250px" ></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" Width="250px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Email invalid" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            
         <asp:Label ID="Label2" runat="server" Text="Mot de passe" AccessKey="P" Width="250px" ></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" Text="*"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator" runat="server" ForeColor="Red" ControlToValidate="TextBox3"
                    ControlToCompare="TextBox4" ErrorMessage="mot de passe est invalide">
                </asp:CompareValidator>
                <br />

                <asp:Label ID="Label3" runat="server" Text="Retaper le Mot de passe" Width="250px" ></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                <br />
                <br />
                <br />
             <asp:Label ID="Label4" runat="server" Text="Tapez 14 " Width="250px" ></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" Width="250px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Text="*"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ForeColor="Red" Type="Integer" 
                    ControlToValidate="TextBox5" ValueToCompare="14" ErrorMessage="Tapez 14!">
                </asp:CompareValidator>
                <br />
                
            <br />
            <asp:Button ID="Button1" runat="server" Text="Valider" />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Résumé des erreurs" />
        </div>
    </form>
</body>
</html>
