import * as a from "./a.out.js";

export const add = () => {
	a.ccall("add", 'number', ['number', 'number'], [2,2]);
}
