proc showName(): void =
  var name {.global.}: string = "Foo"
  echo name

showName()