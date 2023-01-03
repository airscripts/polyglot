type
  Person = object
    name: string
    age: uint

var person = Person(name: "Foo", age: 42'u)
echo person, person.name, person.age