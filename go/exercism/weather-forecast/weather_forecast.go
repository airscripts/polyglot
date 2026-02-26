// Package weather contains utilities regarding weather that help forecast the current weather condition of various cities in Goblinocus.
package weather

var (
	// CurrentCondition variable stores current weather condition.
	CurrentCondition string
	// CurrentLocation variable stores the current location.
	CurrentLocation  string
)

// Forecast function simply returns current weather condition for the given current location.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
