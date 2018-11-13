defmodule Factorial do
    def of(0), do: 1
    def of(n), do: n * of(n-1)
end

defmodule GCD do
    def of(x,0), do: x
    def of(x,y), do: of(y,rem(x,y))
end