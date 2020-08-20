Code.require_file("5_custom_module.ex")
defmodule Module_import do
  def say_hello, do: Custom_module.square_function(2)
end

Module_import.say_hello()
