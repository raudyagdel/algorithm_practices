function countHours(year, holidays) {
    return holidays.filter(function (h) { return new Date(year + "-" + h.replace("/", "-")).getDay() % 6; }).length * 2;
}
var year = 2023;
var holidays = ['01/06', '04/01', '12/25'];
var counts = countHours(year, holidays);
console.log(counts);
