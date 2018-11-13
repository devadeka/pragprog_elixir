defmodule Chop do
    def guess(number, range) do
        lo..hi = range
        middle = div(hi-lo,2) + lo
        IO.puts "It is #{middle}"
        make_guess(number, {middle, hi, lo} )
    end

    def make_guess(number, {middle, _, lo}) when number < middle do
        guess(number, lo..middle)
    end

    def make_guess(number, {middle, hi, _}) when number > middle do
        guess(number, middle..hi)
    end

    def make_guess(number, {_, _, _}), do: number
end