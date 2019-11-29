actor Counter
  var _count: U32

  new create() =>
    _count = 0

  be inc() =>
    _count = _count + 1

  be display(out: OutStream) =>
    out.print(_count.string())
    _count = 0

actor Main
  new create(env: Env) => 
    let c = Counter
    c.inc()
    c.display(env.out)
