var __spreadArray = (this && this.__spreadArray) || function (to, from, pack) {
    if (pack || arguments.length === 2) for (var i = 0, l = from.length, ar; i < l; i++) {
        if (ar || !(i in from)) {
            if (!ar) ar = Array.prototype.slice.call(from, 0, i);
            ar[i] = from[i];
        }
    }
    return to.concat(ar || Array.prototype.slice.call(from));
};
function getGiftsToRefill(a1, a2, a3) {
    var a = __spreadArray(__spreadArray(__spreadArray([], a1, true), a2, true), a3, true);
    return a.filter(function (v, p) { return a1.includes(v) + a2.includes(v) + a3.includes(v) == 1 && a.indexOf(v) == p; });
}
var a1 = ['bici', 'coche', 'bici', 'bici'];
var a2 = ['coche', 'bici', 'muñeca', 'coche'];
var a3 = ['bici', 'pc', 'pc'];
/* El almacén a1 tiene "bici" y "coche".
El almacén a2 tiene "coche", "bici" y "muñeca".
El almacén a3 tiene "bici" y "pc".

El regalo "muñeca" y "pc" sólo están en los almacenes a2 y a3 respectivamente.
*/
var uniques = getGiftsToRefill(a1, a2, a3);
console.log(uniques);
