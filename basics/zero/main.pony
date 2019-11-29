actor Main
  new create(env: Env) =>
    let x : U32 = 1
    let y : U32 = 0
    let z = x / y
    env.out.print("This won't crash!")
