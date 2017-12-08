<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BMICalculator.aspx.cs" Inherits="BMICal.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    
    <h1>BMI Calculator</h1>
 <section class="BMI">

     <form method="post">
      <p><label for="title">Title:</label>
         <input type="text" name="Name" value="@Request.Form["Name"]" />
      </p>
        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        
        <asp:Label ID="lblGender" runat="server" Text="Gender"> </asp:Label>
            <asp:RadioButton ID="rdoMale" runat="server" /> Male
            <asp:RadioButton ID="rdoFemale" runat="server" /> Female
       
     
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

        <asp:Button ID="btnBMICalculator" runat="server" Text="Calculate" OnClick="btnBMICalculator_Click" />
</form>
</section>


</asp:Content>
