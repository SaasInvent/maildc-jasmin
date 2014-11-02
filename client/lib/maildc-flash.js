// return functions from flash

function onInit() {
      flash = $("#flash"); 
      console.log (flash) ;        
      console.log ('onInit');
      flash[0].getIndex("hallo"); 
}


function onGetIndex(index) {
    console.log ("onGetIndex");
    console.log (index);
}


function onDebug(message) {
        console.log(message);
}

