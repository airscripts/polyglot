type
  Person = tuple
    name: string
    age: uint

var person: Person = (name: "Foo", age: 42'u)
echo person, person.name, person.age

let name, age = person
echo name, age