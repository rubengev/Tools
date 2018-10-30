<%@ Page Title="Tools" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="SlatCalculator.aspx.cs" Inherits="SlatCalculator" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Slat Calculator</h3>

    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="lblBW" AssociatedControlID="txtBaseWidth" runat="server" Text="Base Width"></asp:Label>
            <asp:TextBox ID="txtBaseWidth" runat="server"></asp:TextBox>
            <asp:Label ID="lblBaseWidth" AssociatedControlID="txtBaseWidth" runat="server" Text=""></asp:Label>
<%--            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                CssClass="text-danger"
                ControlToValidate="txtBaseWidth"
                ErrorMessage="Numeric values please..."
                ValidationExpression="/^-?(0|[1-9]\d*)$/"></asp:RegularExpressionValidator>--%>
            <asp:RequiredFieldValidator ID="rv1" runat="server" 
                Display="Dynamic"
                CssClass="text-danger"
                ErrorMessage="Base Width required"
                ControlToValidate="txtBaseWidth">
            </asp:RequiredFieldValidator>
        </div>

        <div class="col-md-4">
            <asp:Label ID="lblSW" AssociatedControlID="txtSlatWidth" runat="server" Text="Slat Width"></asp:Label>
            <asp:TextBox ID="txtSlatWidth" runat="server"></asp:TextBox>
<%--            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                CssClass="text-danger"
                ControlToValidate="txtSlatWidth"
                ErrorMessage="Numeric values please..."
                ValidationExpression="/^(0|[1-9]\d*)(\.\d+)?$/"></asp:RegularExpressionValidator>--%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                Display="Dynamic"
                CssClass="text-danger"
                ErrorMessage="Slat Width required"
                ControlToValidate="txtSlatWidth">
            </asp:RequiredFieldValidator>

        </div>

        <div class="col-md-4">
            <asp:Label ID="lblSC" AssociatedControlID="txtSlatCount" runat="server" Text="Slat Count"></asp:Label>
            <asp:TextBox ID="txtSlatCount" runat="server"></asp:TextBox>
<%--            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                CssClass="text-danger"
                ControlToValidate="txtSlatCount"
                ErrorMessage="Numeric values please..."
                ValidationExpression="/^(0|[1-9]\d*)(\.\d+)?$/"></asp:RegularExpressionValidator>--%>
        </div>

    </div>


    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="Label1" AssociatedControlID="lblSpacerWidth" runat="server" Text="Spacer Width"></asp:Label>
            <asp:Label ID="lblSpacerWidth" runat="server"></asp:Label>
        </div>

        <div class="col-md-4">
            <asp:Label ID="Label2" AssociatedControlID="lblFirstStep" runat="server" Text="First Step"></asp:Label>
            <asp:Label ID="lblFirstStep" runat="server"></asp:Label>
        </div>

        <div class="col-md-4">
            <asp:Label ID="Label3" AssociatedControlID="lblOtherSteps" runat="server" Text="Other Steps"></asp:Label>
            <asp:Label ID="lblOtherSteps" runat="server"></asp:Label>
        </div>

    </div>

 <div style="width:500px;height:100px;border:1px solid #000;">

     </div>

    <div class="row">
        <div class="col-md-2 col-md-offset-10">
            <asp:Button ID="btnGetSlatCount" runat="server" Text="Get Slat And Go" OnClick="btnGetSlatCount_Click"></asp:Button>
            <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click"></asp:Button>
        </div>
    </div>
</asp:Content>
