# frozen_string_literal: true

def fibs(num)
  fib_seq = [0, 1]
  fib_seq << fib_seq[-1] + fib_seq[-2] while fib_seq.length < num
  fib_seq[0...num]
end

def fibs_rec(num, fib_seq = [0, 1])
  if fib_seq.length < num
    fib_seq << fib_seq[-1] + fib_seq[-2]
    fibs_rec(num, fib_seq)
  else
    fib_seq[0...num]
  end
end
