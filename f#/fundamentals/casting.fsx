type Base() =
  abstract member foo: unit -> unit

  default this.foo() =
    printfn "foo"

type Derived() =
  inherit Base()

  override this.foo() =
    printfn "bar"

let derived = Derived()
let baz = derived :> Base
let qux = baz :?> Derived