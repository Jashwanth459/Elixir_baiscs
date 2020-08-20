defmodule IO_module do
  def puts_function do
    # puts from IO module
    IO.puts 'using puts, hey buddy'
    IO.puts 'using puts, Whats up'
  end
  def write_function do
    # write from IO module
    IO.write 'using write, hey buddy'
    IO.write 'using write, whats up'  
  end
end
IO_module.puts_function()
IO_module.write_function()

