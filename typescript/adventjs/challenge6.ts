
function createCube(size) {
    let r = ''
    for (let i = size; i > 0; i--) {
        r = r + " ".repeat(size - i) + "\\/".repeat(i) + "_/".repeat(size) + (i > 1 ? "\n" : "")
        r = " ".repeat(size - i) + "/\\".repeat(i) + "_\\".repeat(size) + "\n" + r
    }
    return r
}


let size = 3
console.log(createCube(size))
