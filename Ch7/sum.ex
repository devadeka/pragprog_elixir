defmodule MyList do
    defmodule Accum do
        def sum(list), do: _sum(list, 0)
        # private methods
        defp _sum([], total), do: total
        defp _sum([ head | tail ], total), do: _sum(tail, head+total)
    end

    #Exercise: ListsAndRecursion-0
    defmodule NoAccum do
        def sum(list), do: _sum(list)
        # private methods
        defp _sum([]), do: 0
        defp _sum([ head | tail ]), do: head + _sum(tail)
    end

    #Exercise: ListsAndRecursion-1
    defmodule Map do
        def mapsum([], _), do: 0
        def mapsum([ head | tail ], func), do: func.(head) + mapsum(tail, func)
    end

    #Exercise: ListsAndRecursion-2
    defmodule Max do
        def of([], _), do: nil
        def of([a,b]) when a > b, do: a
        def of([_,b]), do: b
        def of([ head | tail ]), do: of( [head, of(tail)] )
    end
end