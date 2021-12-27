// Реализация foreach цикла для массива в GML

#macro breakeach breakme[@ 0] = true;
#macro as , function

/// @function foreach(array as (element, [index])
function foreach(array, func) {
    var breakme = array_create(1);
    breakme[0] = false;
    
    var size = array_length(array);
    
    for (var i = 0; i < size; i++) {
        if (breakme[0] == true) break;
        
        var element = array[i];
        func(element, i, breakme);
    }
}