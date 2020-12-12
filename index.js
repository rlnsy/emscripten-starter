import * as a from "./a.out.js";

const result = a.ccall("add", 'number', ['number', 'number'], [2,2]);

//window.displayResult = function() {
	//console.log(result);
//};

$(function(){
    $('button').on('click',function(){
        console.log(result);
    });
});
