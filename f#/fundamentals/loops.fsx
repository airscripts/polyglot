let list = [1; 2; 3; 4; 5]

for number in list do
  printfn "%i" number

for index = 1 to list.Length do
  printfn "%i" index

for index = list.Length downto 1 do
  printfn "%i" index

let mutable number = 99
while number = 99 do
  printf "Insert a number different than 99: "
  number <- System.Int32.Parse(System.Console.ReadLine())