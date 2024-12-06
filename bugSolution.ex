```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:my_exception)
    end
    IO.puts(x)
  end)
catch
  :my_exception -> IO.puts("Exception caught!")
end

# Or use Enum.find to directly achieve the goal 
found = Enum.find(list, fn x -> x == 3 end)
IO.puts(found) # Prints 3

# For conditional processing, use Enum.map with case statements or other conditional logic
result = Enum.map(list, fn x -> 
  case x do
    3 -> :exception
    _ -> x
  end
end)
IO.puts(result) # Prints [1, 2, :exception, 4, 5]
```