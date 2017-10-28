<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="BMICal.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    <h1>BMI Calculator</h1>
    <%--<form class="BMI">--%>
    <div class="BMI">

        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        
        <asp:Label ID="lblGender" runat="server" Text="Gender">
            <asp:RadioButton ID="rdoMale" runat="server" /> Male
            <asp:RadioButton ID="rdoFemale" runat="server" /> Female
        </asp:Label>


        <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>

         <asp:Label ID="lblHeight" runat="server" Text="Height"></asp:Label>

        <asp:Label ID="lblHeightFeet" runat="server" Text="Feet"></asp:Label>
        <asp:TextBox ID="txtFeet" runat="server"></asp:TextBox>

        <asp:Label ID="lblHeightInch" runat="server" Text="Inch"></asp:Label>
        <asp:TextBox ID="txtInch" runat="server"></asp:TextBox>

        <asp:Label ID="lblWeight" runat="server" Text="Weight"></asp:Label>
        <asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>

        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <br>

        <asp:Button ID="btnBMICalculator" runat="server" Text="Button" OnClick="btnBMICalculator_Click" />
    <%--</form>--%>

    </div>


</asp:Content>
