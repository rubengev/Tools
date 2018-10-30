<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="PoligonMiterCalculator.aspx.cs" Inherits="PoligonMiterCalculator" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3></h3>

    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="lblSides" AssociatedControlID="txtSides" runat="server" Text="Sides Number"></asp:Label>
            <asp:TextBox ID="txtSides" runat="server"></asp:TextBox>

<%--            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                CssClass="text-danger"
                ControlToValidate="txtBaseWidth"
                ErrorMessage="Numeric values please..."
                ValidationExpression="/^-?(0|[1-9]\d*)$/"></asp:RegularExpressionValidator>--%>
            <asp:RequiredFieldValidator ID="rv1" runat="server" 
                Display="Dynamic"
                CssClass="text-danger"
                ErrorMessage="Sides Number required"
                ControlToValidate="txtSides">
            </asp:RequiredFieldValidator>
        </div>

        <div class="col-md-4">
            <asp:Label ID="lblSW" AssociatedControlID="txtSplayAngle" runat="server" Text="Splay Angle (Side outward tilt)"></asp:Label>
            <asp:TextBox ID="txtSplayAngle" runat="server"></asp:TextBox>
<%--            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                CssClass="text-danger"
                ControlToValidate="txtSlatWidth"
                ErrorMessage="Numeric values please..."
                ValidationExpression="/^(0|[1-9]\d*)(\.\d+)?$/"></asp:RegularExpressionValidator>--%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                Display="Dynamic"
                CssClass="text-danger"
                ErrorMessage="Splay Angle required"
                ControlToValidate="txtSplayAngle">
            </asp:RequiredFieldValidator>

        </div>



    </div>


    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="Label11" AssociatedControlID="lblSawTiltAngle" runat="server" Text="Flat Miter Angle: "></asp:Label>
            <asp:Label ID="lblFlatMiterAngle" runat="server"></asp:Label>
        </div>
        <div class="col-md-4">
            <asp:Label ID="Label12" AssociatedControlID="lblSawTiltAngle" runat="server" Text="Flat Miter Radian: "></asp:Label>
            <asp:Label ID="lblFlatMiterRadian" runat="server"></asp:Label>
        </div>
        <div class="col-md-4">
            <asp:Label ID="Label122" AssociatedControlID="lblSawTiltAngle" runat="server" Text="L/R: "></asp:Label>
            <asp:Label ID="lblLR" runat="server"></asp:Label>
        </div>        
        
        <div class="col-md-4">
            <asp:Label ID="Label1" AssociatedControlID="lblSawTiltAngle" runat="server" Text="Saw Tilt Angle: "></asp:Label>
            <asp:Label ID="lblSawTiltAngle" runat="server"></asp:Label>
        </div>
        <div class="col-md-4">
            <asp:Label ID="Label2" AssociatedControlID="lblMiterAngle" runat="server" Text="Miter Angle: "></asp:Label>
            <asp:Label ID="lblMiterAngle" runat="server"></asp:Label>
        </div>


    </div>


    <div class="row">
        <div class="col-md-2 col-md-offset-10">
            <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click"></asp:Button>
        </div>
    </div>
</asp:Content>