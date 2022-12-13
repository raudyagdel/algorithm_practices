function distributeGifts(packOfGifts, reindeers) {
    var p = 0, r = 0;
    packOfGifts.forEach(function (x) { return p += x.length; });
    reindeers.forEach(function (x) { return r += x.length * 2; });
    return (r / p) | 0;
}
var packOfGifts = ["book", "doll", "ball"];
var reindeers = ["dasher", "dancer"];
var boxes = distributeGifts(packOfGifts, reindeers);
console.log(boxes);
