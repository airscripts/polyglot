package techpalace
import "strings"

// WelcomeMessage returns a welcome message for the customer.
func WelcomeMessage(customer string) string {
	return "Welcome to the Tech Palace, " + strings.ToUpper(customer)
}

// AddBorder adds a border to a welcome message.
func AddBorder(welcomeMsg string, numStarsPerLine int) string {
	return strings.Repeat("*", numStarsPerLine) + "\n" + welcomeMsg + "\n" + strings.Repeat("*", numStarsPerLine)
}

// CleanupMessage cleans up an old marketing message.
func CleanupMessage(oldMsg string) string {
	var cleanedMessage = strings.ReplaceAll(oldMsg, "*", "")
    var escapedMessage = strings.Trim(cleanedMessage, "\n")
    var trimmedMessage = strings.Trim(escapedMessage, " ")
    return trimmedMessage
}
