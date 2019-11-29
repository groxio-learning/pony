class Counter
  var count: U32

  new create(start: U32) =>
    count = 0

  fun ref inc() =>
    count = count + 1

actor Main
  new create(env: Env) =>
    let c1 = Counter(0)
    c1.inc()
    c1.inc()
    env.out.print(c1.count.string())