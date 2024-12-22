```elixir
list = [1, 2, 3, 4, 5]

Enum.map(list, fn x ->
  if x == 3 do
    Process.sleep(1000)  # Simulate a long-running operation
  end
  x
end) |> Enum.each(fn x -> IO.puts(x) end)
```