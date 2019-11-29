actor Calculator
  be handle(n: U32) =>
    None

actor Main
  new create(env: Env) =>
    let c = Calculator.create()
    let n: U32 = 5
    c.handle(n)
