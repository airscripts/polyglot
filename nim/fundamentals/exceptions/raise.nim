var error: ref OSError
new(error)

error.msg = "An OS error has been raised."
raise error