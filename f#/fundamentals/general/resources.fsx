open System.IO

let writeToFile filename content = 
  use file = File.CreateText(filename)
  file.WriteLine("{0}", content.ToString())

writeToFile "foo.txt" "bar"

let anotherWriteToFile content (file: StreamWriter) =
  file.WriteLine("{0}", content.ToString())

using (File.CreateText("bar.txt")) (anotherWriteToFile "foo")