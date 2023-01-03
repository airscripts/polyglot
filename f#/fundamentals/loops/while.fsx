let mutable number = 99
while number = 99 do
  printf "Insert a number different than 99: "
  number <- System.Int32.Parse(System.Console.ReadLine())