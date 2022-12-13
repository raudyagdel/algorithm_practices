function countHours(year, holidays) {
    return holidays.filter((h) => new Date(year + "-" + h.replace("/", "-")).getDay() % 6).length * 2;
}

const year = 2023
const holidays = ['01/06', '04/01', '12/25']
const counts = countHours(year, holidays)
console.log(counts)