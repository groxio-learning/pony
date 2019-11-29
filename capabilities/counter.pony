actor Calculator
  be do1(n: U32) =>
    None

actor Main
  new create(env: Env) =>
    let a = Doer.create()
    let n: U32 = 5
    a.do1(n)
