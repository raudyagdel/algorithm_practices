function wrapping(gifts) {
    return gifts.map(function (g) { return "*".repeat(g.length + 2) + "\n*" + g + "*\n" + "*".repeat(g.length + 2); });
}
var gifts = ['cat', 'game', 'socks'];
var wrapped = wrapping(gifts);
console.log(wrapped);
