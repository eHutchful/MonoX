<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="ImageEditor.ascx.cs" 
    Inherits="MonoSoftware.MonoX.Controls.ImageEditor" %>

<div style="width:<%= this.WidthOnClient %>px; height:<%= this.HeightOnClient %>px;">
    <asp:Image ID="img" runat="server" />
</div>
<div class="upload-crop-button">
    <asp:Button runat="server" Id="btnCrop" class="regular-button" Text="Crop" />
    <asp:Button runat="server" Id="btnRotate" class="regular-button" Text="Rotate" />
    <asp:Button runat="server" Id="btnReset" class="regular-button" Text="Reset" />
    <span class="regular-button disabled" id="dim" runat="server"></span>
</div>
<asp:HiddenField ID="hfData" runat="server" EnableViewState="true" />

