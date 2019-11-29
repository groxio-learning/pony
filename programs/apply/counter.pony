class Counter
  var count: U32 = 0
  
  fun ref apply() => 
    count = count + 1
    
actor Main
  new create(env: Env) => 
    let c = Counter
    c()
    c()
    
    env.out.print(c.count.string())