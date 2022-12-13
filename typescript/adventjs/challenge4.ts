function fitsInOneBox(boxes) {
    boxes.sort((a, b) => {
        return a.l - b.l || a.w - b.w || a.h - b.h
    })
    const length = boxes.length
    return boxes.every((box, index) => {
        if (index < length - 1) {
            const next = boxes[index + 1]
            return box.l < next.l && box.w < next.w && box.h < next.h
        }
        return true
    })
}

const boxes = [
    { l: 1, w: 1, h: 1 },
    { l: 3, w: 3, h: 3 },
    { l: 2, w: 2, h: 2 }
]

console.log(fitsInOneBox(boxes))