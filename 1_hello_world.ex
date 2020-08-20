# We should be careful with the file name conventions
# Module should start with Caps
# Function should not start with Caps

defmodule Module_m1 do
  def _Function_f1 do
    IO.puts('In Module 1')
  end
  def function_2 do
    _Function_f1()
  end
end
defmodule Module_m2 do
  def function_f1 do
    IO.puts('In Module 2')
  end
end
Module_m1.function_2()
Module_m2.function_f1()

