function titleize(names, callback) {

  var titleizedNames = names.map(function(name) {
    return "Mx. " + name + " Jingleheimer Schmidt";
  });
  callback(titleizedNames);
  
}

function printCallback(titleizedNames) {
  titleizedNames.forEach(function(titleizedName) {
    console.log(titleizedName);
  });
}

titleize(["Mary", "Brian", "Leo"], printCallback);
