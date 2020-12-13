import * as a from "./a.out.js";

//a().then((result) => {
			//console.log(result);
		//})
		//.catch((err) => {
			//console.log("error loading wasm module");
			//console.log(err);
		//});

export const add = () => {
	a.ccall("add", 'number', ['number', 'number'], [2,2]);
}
