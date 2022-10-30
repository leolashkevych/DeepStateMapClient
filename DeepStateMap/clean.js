function removeElementsByClass(className){
    const elements = Array.from(document.getElementsByClassName(className))
    elements.forEach(element => {
       element.remove();
    });
}

try{
    // Remove overlay
    overlays = Array.from(document.getElementsByTagName("getsitecontrol-widget"));
    overlays.forEach(element => {
       element.remove();
    });
}
catch(error){
    console.log(error)
}
finally{}

// Remove disclaimer
removeElementsByClass("disclaimer");
// Remove social links
removeElementsByClass("btn-info");
removeElementsByClass("deepstate-logo");
removeElementsByClass("leaflet-control-attribution");
document.getElementById("maptiler-copyright").remove();
