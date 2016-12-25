<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CropImage.ascx.cs" Inherits="MonoSoftware.MonoX.Controls.CropImage" %>

<script type="text/javascript">
    //<![CDATA[
    $(document).ready(function() {
        $('#<%= imgCrop.ClientID %>').parent().imagesLoaded(setupCrop);
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        if (prm != null) {
            prm.add_endRequest(function (s, e) {
                setupCrop();
            });
        }
    });

    function setupCrop(){        
        $('#<%= imgCrop.ClientID %>').Jcrop({
            onSelect: function (c){
                $('#<%= hfCropData.ClientID %>').val(parseInt(c.x) +';'+ parseInt(c.y) +';'+ parseInt(c.h) +';'+ parseInt(c.w));
            }, 
            aspectRatio:<%= this.ImageAspectRatio %>, 
            trueSize: [<%= this.FileInfo.Width %>, <%= this.FileInfo.Height %>], 
            boxWidth: <%= this.BoxWidth %>, 
            boxHeight : <%= this.BoxHeight %>, 
            minSize: [<%= this.CropMinSizeWidth %>,<%= this.CropMinSizeHeight %>],
            setSelect: <%= !this.AllowSelectOnCrop ?  
            string.Format("[{0}, {1}, {2}, {3}]", this.GetUpScaledImageCenter(CropMinSizeWidth, true), this.GetUpScaledImageCenter(CropMinSizeHeight, false), 
            this.GetUpScaledImageCropArea(CropMinSizeWidth, true), this.GetUpScaledImageCropArea(CropMinSizeHeight, false)) : "null" %>, 
            allowSelect: <%= this.AllowSelectOnCrop.ToString().ToLower() %>, parentDiv: $('#<%= imgCrop.ClientID %>').parent(), bgOpacity: <%= this.BackgroundOpacity %>
        });        
    };
    //]]>    
</script>

<div style="width:<%= this.WidthOnClient %>px; height:<%= this.HeightOnClient %>px;">    
    <asp:Image ID="imgCrop" runat="server" CssClass="image-crop-holder" />
    <asp:HiddenField ID="hfCropData" runat="server" EnableViewState="true" />
</div>
<div class="upload-crop-button">
    <asp:Button runat="server" Id="btnCrop" class="regular-button" />
    <asp:Button runat="server" Id="btnRotate" class="regular-button" />
    <asp:Button runat="server" Id="btnCancel" class="regular-button" />
</div>