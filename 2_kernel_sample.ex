defmodule Kernel_sample_module do
  def function_without_kernel do
    # Kernel is not used
    IO.puts is_number(10)
  end
  def function_with_kernel do
    # Kernel is used
    IO.puts Kernel.is_number("hello")
  end
end
Kernel_sample_module.function_without_kernel()
Kernel_sample_module.function_with_kernel()

