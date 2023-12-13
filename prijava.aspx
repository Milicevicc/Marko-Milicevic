<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prijava.aspx.cs" Inherits="PitDomaci.prijava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>PRIJAVA</h1>

            Prezime i ime : 
            <asp:TextBox ID="txtIme" runat="server" />
            <asp:RequiredFieldValidator ID="txtImeValidator"
                ErrorMessage="Ovo polje je obavezno!" 
                ControlToValidate="txtIme"
                Display="Static"
                EnableClientScript="false"
                ValidationGroup="1"
                SetFocusOnError="true"
                runat="server" />
            <br />

            Email : 
            <asp:TextBox ID="txtEmail" runat="server" />
            <asp:RequiredFieldValidator ID="txtEmailValidator"
                ErrorMessage="Ovo polje je obavezno!" 
                ControlToValidate="txtEmail"
                Display="Static"
                EnableClientScript="false"
                ValidationGroup="1"
                SetFocusOnError="true"
                runat="server" />
            <asp:RegularExpressionValidator ID="txtEmailValidator2"
                ErrorMessage="Email nije u ispravnom formatu!" 
                ControlToValidate="txtEmail"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                EnableClientScript="false"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="1"
                runat="server" />
            <br />


            Potvrdi email :
            <asp:TextBox ID="txtPotvrda" runat="server" />
            <asp:CompareValidator ID="txtPotvrdaValidator"
                ErrorMessage="Email-ovi se ne poklapaju!" 
                ControlToValidate="txtEmail"
                ControlToCompare="txtPotvrda"
                EnableClientScript="False"
                ValidationGroup="1"
                runat="server" />
            <br />

            Godina rodjenja : 
            <asp:TextBox ID="txtGod" runat="server" />
            <asp:RequiredFieldValidator ID="txtGodValidator"
                ErrorMessage="Ovo polje je obavezno!" 
                ControlToValidate="txtGod"
                Display="Static"
                EnableClientScript="false"
                ValidationGroup="1"
                SetFocusOnError="true"
                runat="server" />
            <asp:RangeValidator ID="txtGodValidator2"
                ErrorMessage="Ne dozvoljena godina!" 
                ControlToValidate="txtGod" 
                Display="Static"
                EnableClientScript="False"
                ValidationGroup="1"
                SetFocusOnError="True"
                MaximumValue="2010"
                MinimumValue="2003"
                Type="Integer"
                runat="server" />
            <br />

            Razred : 
            <asp:RadioButtonList ID="rdnbtn" runat="server">
                <asp:ListItem Text="I" />
                <asp:ListItem Text="II" />
                <asp:ListItem Text ="III" />  
                <asp:ListItem Text="IV" />
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rdnbtnValidator"
                ErrorMessage="Ovo polje je obavezno!" 
                ControlToValidate="rdnbtn"
                Display="Static"
                EnableClientScript="false"
                ValidationGroup="1"
                SetFocusOnError="true"
                runat="server" />
            <br />

            <asp:Button ID="btn" 
                Text="Prijavi se"
                ValidationGroup="1"
                CausesValidation="true"
                OnClick="btn_Click"
                runat="server" />
            <br />
            <asp:Label ID="lbl" runat="server" />
        </div>
    </form>
</body>
</html>
