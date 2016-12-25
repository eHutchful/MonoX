
// http://connect.microsoft.com/VisualStudio/feedback/details/299399/validationsummary-control-causes-the-page-to-scroll-to-the-top

(function () {
    var originalValidationSummaryOnSubmit = window.ValidationSummaryOnSubmit;
    window.ValidationSummaryOnSubmit = function (validationGroup) {
        var originalScrollTo = window.scrollTo;
        window.scrollTo = function () { };
        originalValidationSummaryOnSubmit(validationGroup);
        window.scrollTo = originalScrollTo;
    }
} ());

try { if (typeof (Sys) !== 'undefined') Sys.Application.notifyScriptLoaded(); } catch (ex) { }