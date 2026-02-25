package cars

// CalculateWorkingCarsPerHour calculates how many working cars are
// produced by the assembly line every hour.
func CalculateWorkingCarsPerHour(productionRate int, successRate float64) float64 {
	return float64((float64(productionRate) * successRate)) / float64(100)
}

// CalculateWorkingCarsPerMinute calculates how many working cars are
// produced by the assembly line every minute.
func CalculateWorkingCarsPerMinute(productionRate int, successRate float64) int {
	return int(((float64(float64(productionRate) * successRate)) / float64(100)) / float64(60))
}

// CalculateCost works out the cost of producing the given number of cars.
func CalculateCost(carsCount int) uint {
	var totalTens = int(carsCount / 10)
    var carsDifference = carsCount - (totalTens * 10)
    return uint((totalTens * 95000) + (carsDifference * 10000))
}
