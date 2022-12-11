type Color = 
  | Red = 1
  | Green = 2
  | Blue = 3

let color = enum<Color> 1
printf $"The selected color is: {color}"