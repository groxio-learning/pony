actor Calculator
  var _tally: U32

  new create() =>
    _tally = 0

  be add(number: U32) =>
    _tally = _tally + number

  be get(main: Main tag) =>
    main.display(_tally)

  be clear() =>
    _tally = 0

actor Main
  var _env: Env

  new create(env: Env) =>
    _env = env
    var calculator: Calculator  tag = Calculator

    calculator.add(5)
    calculator.get(this)

    calculator.clear()
    calculator.add(10)
    calculator.add(5)
    calculator.get(this)

  be display(result: U32) =>
    _env.out.print(result.string())