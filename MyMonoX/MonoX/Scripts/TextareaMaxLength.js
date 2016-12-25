// any textarea with "data-maxlength" attribute set, gets maxlength handler.

$(document).ready(function () {
    monox_textareaMaxLength();
    var prm = Sys.WebForms.PageRequestManager.getInstance();
    if (prm != null) {
        prm.add_endRequest(function (s, e) {
            monox_textareaMaxLength();
        });
    }
});

function monox_textareaMaxLength() {
    var textareas = $('textarea[data-maxlength]');
    textareas.each(function () {
        var obj = $(this);
        var maxLength = obj.data('maxlength');
        obj.bind('input propertychange', function () {
            var txt = obj.val();
            if (txt.length > maxLength) {
                obj.val(txt.substring(0, maxLength));
            }
        })
    });
}

try { if (typeof (Sys) !== 'undefined') Sys.Application.notifyScriptLoaded(); } catch (ex) { }