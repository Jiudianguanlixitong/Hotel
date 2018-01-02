$('#pass').keyup(function () {
    var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
    var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
    var enoughRegex = new RegExp("(?=.{6,}).*", "g");

    if (false == enoughRegex.test($(this).val())) {
        $('#level').removeClass('pw-weak');
        $('#level').removeClass('pw-medium');
        $('#level').removeClass('pw-strong');
        $('#level').addClass(' pw-defule');
        //密码小于六位的时候，密码强度图片都为灰色
    }
    else if (strongRegex.test($(this).val())) {
        $('#level').removeClass('pw-weak');
        $('#level').removeClass('pw-medium');
        $('#level').removeClass('pw-strong');
        $('#level').addClass(' pw-strong');
        //密码为八位及以上并且字母数字特殊字符三项都包括,强度最强
    }
    else if (mediumRegex.test($(this).val())) {
        $('#level').removeClass('pw-weak');
        $('#level').removeClass('pw-medium');
        $('#level').removeClass('pw-strong');
        $('#level').addClass(' pw-medium');
        //密码为七位及以上并且字母、数字、特殊字符三项中有两项，强度是中等
    }
    else {
        $('#level').removeClass('pw-weak');
        $('#level').removeClass('pw-medium');
        $('#level').removeClass('pw-strong');
        $('#level').addClass('pw-weak');
        //如果密码为6为及以下，就算字母、数字、特殊字符三项都包括，强度也是弱的
    }
    return true;
});

function validateUsername() {
    $.ajax({
        url: '/Validate?userinput=' + $('#username').val(),
        type: 'post',
        dataType: 'jsonp',
        jsonp: "callback",
        success: function (date) {
            userhelpText(date);
            console.log(date);
        }
    })
}

function userhelpText(date) {
    var status = (date.status == 'true');
    if ($('#username').val() != '') {
        if (status) {
            if ($('#user_help').val() != null) {
                $('#user_help').text("很抱歉" + date.user + "已经被注册了");
                return false;
            }
        } else {
            if ($('#user_help').val() != null) {
                $('#user_help').text(date.user + "可用");
                return true;
            }
        }
    } else {
        $('#user_help').text("");
    }
};

function checkUserHelp() {
    if ($('#user_help').text().indexOf("可用") == -1) {
        return false;
    } else {
        return true;
    }
}


function validateRegEx(regex, input, helpText, helpMessage) {
    if (!regex.test(input)) {
        if (helpText != null)
            helpText.innerHTML = helpMessage;
        return false;
    } else {
        if (helpText != null)
            helpText.innerHTML = "";
        return true;
    }
}

function validateNonEmpty(inputField, helpText) {
    // See if the input value contains any text
    return validateRegEx(/.+/,
        inputField.value, helpText,
        "请输入一个值:");
}

function validateID(inputField, helpText) {
    if (!validateNonEmpty(inputField, helpText))
        return false;
    return validateRegEx(/^\d{5}$/, inputField.value, helpText, "请输入正确的身份证号");
}

function validatePass(inputFiedl, helpText) {
    if (!validateNonEmpty(inputFiedl, helpText))
        return false;
    var pass = document.getElementById("pass").value;
    var repassword = document.getElementById("confipass").value;
    if (pass != repassword) {
        helpText.innerHTML = "两次密码不一致";
        return false;
    }
    return true;
}

function placeOrder(form) {
    if (validateID(form["new_id"], form["id_help"])
        && validatePass(form["confipass"], form["confi_help"])
        && checkUserHelp()) {
        alert("注册成功");
        form.submit();
    }
    else {
        alert("请输入正确的信息")
    }
}