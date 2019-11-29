use "promises"

actor Stepper
  var steps: U32
  
  new create(start: U32) =>
    steps = start

  be forward() =>
    steps = steps + 1

  be back() =>
    steps = steps - 1
    
  be get(p: Promise[U32]) =>
    p(steps) 
    

actor Main
  var _env: Env
  
  new create(env: Env) => 
    _env = env
    step_step_back()  
  
  be fulfill(i: U32) =>
    _env.out.print(i.string())
      
  fun step_step_back() =>
    let s: Stepper = Stepper(0)
    let p: Promise[U32] = Promise[U32]

    s.>forward().>forward().>back().get(p)
    p.next[None](recover this~fulfill() end)
    