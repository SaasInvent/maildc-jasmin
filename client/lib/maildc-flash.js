// return functions from flash

function onInit() {
      var flash = $("#flash"); 
      console.log (flash) ;        
      console.log ('onInit');
      flash[0].getIndex("hallo"); 
}


function onGetIndex(index) {
    console.log ("onGetIndex");
    console.log (index);
    console.log ($.parseJSON( index ));
    var myObject = jQuery.parseJSON( index);
    console.log (myObject.name);
}


function onDebug(message) {
        console.log(message);
}

