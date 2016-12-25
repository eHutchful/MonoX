<%@ Control
    Language="C#"
    AutoEventWireup="true"
    Inherits="MonoSoftware.MonoX.ModuleGallery.Blog.BlogComments"
    Codebehind="BlogComments.ascx.cs" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="MonoXControls" %>
<%@ Register Assembly="MonoSoftware.Web" Namespace="MonoSoftware.Web.Controls" TagPrefix="MonoXControls" %>
<%@ Register TagPrefix="MonoX" TagName="BlogCommentsList" Src="~/MonoX/ModuleGallery/Blog/BlogCommentsList.ascx" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<asp:Panel ID="pnlContainer" runat="server">

    <MonoX:BlogCommentsList ID="ctlCommentsList" runat="server"></MonoX:BlogCommentsList>
    <asp:Panel runat="server" ID="pnlForm">
        <monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="<% $Code: this.ValidationGroup %>"></monox:ValidationHandler>
        <div class="input-form comment-form">
            <dl>
                <dd class="validation-wrapper">
                    <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List" ValidationGroup="BlogCommentEntry" ShowSummary="true" CssClass="validation-summary"/>
                </dd>
                <dd class="half jq_FieldValidatorWrapper">
                    <asp:Label ID="lblName" runat="server" AssociatedControlID="txtName"></asp:Label>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" CssClass="validator" ControlToValidate="txtName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </dd>        
                <dd id="rowEmail" runat="server" class="half jq_FieldValidatorWrapper">
                    <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <MonoXControls:RegExValidator ID="regexEmail" CssClass="validator" ControlToValidate="txtEmail" Display="Dynamic" Text="!" Font-Bold="true" ValidationType="EMail" runat="server"></MonoXControls:RegExValidator>
                    <asp:RequiredFieldValidator id="rfvEmail" Runat="server" CssClass="validator" Display="Dynamic" Text="!" Font-Bold="true" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                </dd>
                <dd class="half jq_FieldValidatorWrapper">
                    <asp:Label ID="lblUrl" runat="server" AssociatedControlID="txtUrl"></asp:Label>
                    <asp:TextBox ID="txtUrl" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regexUrl" runat="server" CssClass="validator" ControlToValidate="txtUrl" Display="Dynamic" Text="!" 
                     ValidationExpression="^(?:(?:https?|ftp):\/\/)(?:\S+(?::\S*)?@)?(?:(?!(?:10|127)(?:\.\d{1,3}){3})(?!(?:169\.254|192\.168)(?:\.\d{1,3}){2})(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))|(?:(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)(?:\.(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)*(?:\.(?:[a-z\u00a1-\uffff]{2,})))(?::\d{2,5})?(?:\/\S*)?$" />
                </dd>        
                <dd class="jq_FieldValidatorWrapper">
                    <asp:Label ID="lblComment" runat="server" AssociatedControlID="txtComment"></asp:Label>
                    <asp:TextBox Rows="5" TextMode="MultiLine" runat="server" ID="txtComment"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvComment" runat="server" CssClass="validator" Text="!" ControlToValidate="txtComment" Display="Dynamic"></asp:RequiredFieldValidator>
                </dd>        
                <dd>
                    <asp:Label ID="lblNotify" AssociatedControlID="chkNotify" runat="server"></asp:Label>
                    <asp:CheckBox BorderStyle="None" BorderWidth="0px" ID="chkNotify" runat="server" TextAlign="Right"></asp:CheckBox>
                    <span><%= BlogResources.Comments_Notify %></span>
                </dd>
                <dd class="button-holder">
                    <MonoX:StyledButton id="btnSave" runat="server" CausesValidation="true" OnClick="btnSave_Click"  />
                </dd>
            </dl>
        </div>
    </asp:Panel>
</asp:Panel>
