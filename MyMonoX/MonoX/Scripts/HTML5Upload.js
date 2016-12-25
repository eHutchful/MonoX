var HTML5Upload = {
    
    initialize: function (containerId, options) {

        var fileUpload = $('#' + containerId);

        if (!fileUpload.length)
            return;

        var initParams = {};

        $.each($('form').serializeArray(),  function (index, value) {
            initParams[value.name] = value.value;
        });

        initParams = $.extend(initParams, options);

        // Initialize the jQuery File Upload widget:
        fileUpload.fileupload({
            url: options.UploadServiceUrl,
            formData: initParams,
            initParams: options,
            dropZone: fileUpload
        });

        // Open download dialogs via iframes,
        // to prevent aborting current uploads:
        fileUpload.find('.files a:not([target^=_blank])').on('click', function (e) {
            e.preventDefault();
            $('<iframe style="display:none;"></iframe>')
                .prop('src', this.href)
                .appendTo('body');
        });
    }
}