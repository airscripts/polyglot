type
  Animal = ref object of RootObj
    name: string
    age: uint
  
  Dog = ref object of Animal
    breed: string

let dog: Dog = Dog(name: "Lucky", age: 5, breed: "Golden Retriever")
echo dog.name