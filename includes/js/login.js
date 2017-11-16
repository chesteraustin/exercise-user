$(document).ready(function(){
    $(".login-fields").on("keyup", function(){
        var loginReady = checkLogin()
        //once login is filled out, submit form
        if (loginReady == true) {
            $("#login-btn").removeAttr("disabled");
        }
    })

    $("#login-btn").on("click", function(){
        loginForm()
    })
    $("#logout-btn").on("click", function(){
        logoutForm()
    })
})

function checkLogin() {
    //check values Login fields
    var email = $("#emailAddress").val();
    var password = $("#password").val();
    if (email.length != 0 && password.length != 0) {
        //both email and password has values, enable login button
        return true
    }
    return false
}

function loginForm() {
    var email = $("#emailAddress").val();
    var password = $("#password").val();

    //submit credentials
    $.ajax
    ({
        type: "POST",
        url: "api/user",
        dataType: 'json',
        async: false,
        headers: {
            "Authorization": "Basic " + btoa(email + ":" + password)
        },
        data: 'comment'
    })
    .done(function(){
        $("#login-section").hide();
        $("#logout-section").show();
        $("#login-error").hide();        
    })
    .fail(function(){
        $("#login-error").show();
    });
}

function logoutForm() {
    console.log("i want to logout")
}