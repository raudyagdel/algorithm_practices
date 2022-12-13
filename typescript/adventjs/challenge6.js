function createCube(size) {
    var r = '';
    for (var i = size; i > 0; i--) {
        r = r + " ".repeat(size - i) + "\\/".repeat(i) + "_/".repeat(size) + (i > 1 ? "\n" : "");
        r = " ".repeat(size - i) + "/\\".repeat(i) + "_\\".repeat(size) + "\n" + r;
    }
    return r;
}
var size = 3;
console.log(createCube(size));
/* 3
  /\_\_\_\
 /\/\_\_\_\
/\/\/\_\_\_\
\/\/\/_/_/_/
 \/\/_/_/_/
  \/_/_/_/
*/ 
