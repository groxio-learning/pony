class Value
  var number: U32 = 42

actor Calculator
  var value: U32
  
  new create() => 
    value = 0
  
  be handle(n: Value iso) =>
    None
        
actor Main
  new create(env: Env) =>
    let c = Calculator.create()
    let n = Value
    c.handle(consume n)
    