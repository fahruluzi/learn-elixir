defmodule Secrets do
  def secret_add(secret) do
    fn add -> add + secret end
  end

  def secret_subtract(secret) do
    fn subtract -> subtract - secret end
  end

  def secret_multiply(secret) do
    fn multi -> multi * secret end
  end

  def secret_divide(secret) do
    fn div -> trunc(div / secret) end
  end

  def secret_and(secret) do
    fn and_op -> Bitwise.band(and_op, secret) end
  end

  def secret_xor(secret) do
    fn xor_op -> Bitwise.bxor(xor_op, secret) end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn arg -> secret_function2.(secret_function1.(arg)) end
  end
end
