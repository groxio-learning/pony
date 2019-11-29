class Counter
  var _count: F32

  new create(initial: F32) =>
    _count = initial

  fun ref inc(): F32 =>
    _count = _count + 1
    _count

actor Main
  new create(env: Env) =>
    let c = Counter(0)
    
    env.out.print(c.inc().string())
