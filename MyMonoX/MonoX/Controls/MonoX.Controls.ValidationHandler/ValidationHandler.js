var MonoSoftware;
(function (MonoSoftware) {    
    (function (MonoX) {
        (function (ValidationHandler) {

            function CheckFieldValidator(options)
            {
                if (options.IsRequired == 'True')
                {
                    var validatorParentContainer = $('#' + options.ValidatorClientId).parents('.' + options.FieldValidatorIdCssClass);            
                    if(validatorParentContainer.length > 0 && !validatorParentContainer.hasClass(options.RequiredFieldCssClass)){
                        validatorParentContainer.addClass(options.RequiredFieldCssClass);
			        }
		        }	
                if ($('#' + options.ValidatorClientId).is(":visible") && !$('#' + options.ControlToValidateClientID).hasClass(options.FieldCssClass))
                {
                    $('#' + options.ControlToValidateClientID).addClass(options.FieldCssClass);
                    $('#' + options.ControlToValidateClientID + '_wrapper').addClass(options.FieldCssClass);
                    $('#' + options.ControlToValidateClientID).addClass(options.ValidatorClientId);
                    $('#' + options.ValidatorClientId).parents('.' + options.FieldValidatorIdCssClass).addClass(options.FieldValidatorWrapperCssClass);
                }
                else if (!$('#' + options.ValidatorClientId).is(":visible"))
                {
                    if ($('#' + options.ControlToValidateClientID).hasClass(options.ValidatorClientId))
                    {
                        $('#' + options.ControlToValidateClientID).removeClass(options.FieldCssClass);
                        $('#' + options.ControlToValidateClientID + '_wrapper').removeClass(options.FieldCssClass);
                        $('#' + options.ControlToValidateClientID).removeClass(options.ValidatorClientId);
                        $('#' + options.ValidatorClientId).parents('.' + options.FieldValidatorIdCssClass).removeClass(options.FieldValidatorWrapperCssClass);
                    }
                }
            }
            ValidationHandler.CheckFieldValidator = CheckFieldValidator;

            var registeredListeners = new Array(); 
            function FieldListener()
            {
                for (var i = 0; i < registeredListeners.length; i++) {
                    setTimeout(registeredListeners[i], 0);
                }
            }
            ValidationHandler.RegisteredListeners = registeredListeners;

            var initialized = false;
            function start()
            {
                if (initialized == true) return;
                window.setInterval(function () { FieldListener(); }, 200);        
                initialized = true;
            }
            ValidationHandler.StartListening = start;

        })(MonoX.ValidationHandler || (MonoX.ValidationHandler = {}));
        var ValidationHandler = MonoX.ValidationHandler;
    })(MonoSoftware.MonoX || (MonoSoftware.MonoX = {}));
    var MonoX = MonoSoftware.MonoX;
})(MonoSoftware || (MonoSoftware = {}));

