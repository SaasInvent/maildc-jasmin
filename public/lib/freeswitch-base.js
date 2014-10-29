/**
 * Created with JetBrains WebStorm.
 * User: markus
 * Date: 21/10/13
 * Time: 10:23
 * To change this template use File | Settings | File Templates.
 */


function deferredLogin() {
    var flash = $("#flash");
    var user = Backbone.fsuser;
    var server = "46.4.112.79";
    var account = user + "@" + server;
   // var account = "1004" + "@" + server ;
    flash[0].login(account, "Chalons2014");
}


function onLogin(status, user, domain) {
    if (status != "success") {
        Backbone.pubSub.trigger('fsNotLoggedIn', "fsNotLoggedIn");
    } else {
        Backbone.pubSub.trigger('fsLoggedIn', "fsLoggedIn");
    }
}

function onDebug(message) {
    if (message === "netStatus: NetConnection.Connect.Success")
    {
        setTimeout(deferredLogin, 2000);
    }
    else
    {
        console.log(message);
    }
}

function onMakeCall(uuid, number, account) {
        Backbone.pubSub.trigger('fsAddCall', uuid);
	}


function onDisconnected() {
	Backbone.pubSub.trigger('fsDisconnected', "fsDisconnected");
	setTimeout(function () {
        $("#flash")[0].connect();
    }, 5000);
}


function onLogout(user, domain) {
    console.log(user);
    console.log(domain);
}

function onInit() {
            var mics = eval($("#flash")[0].micList());
            var sources = $("#input_source");
            var current_mic = $("#flash")[0].getMic();
            sources.children().remove();
            for (i = 0; i < mics.length; i++) {
                var a = (i == current_mic) ? "selected" : "";
                sources.append("<option value='" + i + "' " + a + " >" + mics[i] + "</option");
            }
            Backbone.pubSub.trigger('flashOnInit', "flashOnInit");
        }


function openFlashModal() {
        console.log("openFlashModal");
        //$("#siv-105-flashDialog").modal("toggle");       
        //$("#flash")[0].showPrivacy();
        //$('#calling').hide();
    }
    