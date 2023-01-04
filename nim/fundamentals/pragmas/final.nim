type
  Person {.final.} = ref object of RootObj
    name: string
    age: int
  
  Student = ref object of Person
    id: int

let student: Student = Student(name: "Mario", age: 18, id: 723)
echo student.name