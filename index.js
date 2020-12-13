import * as a from "./a.out.js";

const result = await a()
		.then((result) => result)
		.catch((err) => {
			console.log("error loading wasm module");
			console.log(err);
		});

console.log(result);

//export const add = () => {
	//a.ccall("add", 'number', ['number', 'number'], [2,2]);
//}
