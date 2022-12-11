let foo (x: 'a) (y: 'a) =
  printfn "%A %A" x y
  
let bar<'T> (x: 'T) (y: 'T) =
  printfn "%A %A" x y

foo 1 2
bar<int> 1 2