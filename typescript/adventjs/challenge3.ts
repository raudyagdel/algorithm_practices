function distributeGifts(packOfGifts, reindeers) {
    let p = 0, r = 0
    packOfGifts.forEach(x => p += x.length)
    reindeers.forEach(x => r += x.length * 2)
    return (r / p) | 0
}

const packOfGifts = ["book", "doll", "ball"]
const reindeers = ["dasher", "dancer"]
const numbers = distributeGifts(packOfGifts, reindeers)

console.log(numbers)
