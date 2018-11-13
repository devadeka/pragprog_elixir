defmodule ListAccum do
    def sum(list), do: _sum(list, 0)
    # private methods
    defp _sum([], total), do: total
    defp _sum([ head | tail ], total), do: _sum(tail, head+total)
end

defmodule ListNoAccum do
    def sum(list), do: _sum(list)
    # private methods
    defp _sum([]), do: 0
    defp _sum([ head | tail ]), do: head + _sum(tail)
end
