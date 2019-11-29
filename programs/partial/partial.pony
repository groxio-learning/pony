class Math
  fun ref add(x: U32, y: U32): U32 =>
    (x + y)

actor Main
  new create(env: Env) =>
    let inc = Math~add(1)
    let step2 = Math~add(2)
    
    env.out.print(inc(4).string())
    env.out.print(step2(6).string())
