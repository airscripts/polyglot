type
  Person = ref object of RootObj
    name: string
    age: int

  Student = ref object of Person
    id: int

proc getID(x: Person): int =
  Student(x).id

var student: Student = Student(name: "Mario", age: 42, id: 1)
echo getID(student)