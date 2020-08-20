defmodule Basic_operators do
  def arithmetic_fun do
    div = div(2,10) # Quotient
    rem = rem(2, 10) # Remainder
    IO.puts(div)
    IO.puts(rem)
  end

  def comparision_fun do
    int_var = 20
    float_var = 20.0
    IO.puts(int_var == float_var)
    IO.puts(int_var === float_var)
  end

  def logical_fun do
    var1 = true
    var2 = false
    var3 = 10
    var4 = nil
    var5 = "hey" 

    var1 and var2 # false
    var3 and var4 # BadBollean error
    var1 and var3 and var5 # Boolean error, because the left operand to and should be boolean
    var1 or var2 # true
    var3 or var4 # BadBollean error
    var1 or var3 or var5 # true
    var2 or var3 or var5 # Boolean error, because the left operand to and should be boolean
    not var1 # false 
    not var3 # error

    var1 && var2 # false
    var3 && var4 # nil
    var3 && var5 # "hey"
    var1 && var3 && var5 # "hey"
    var1 || var2 # true
    var3 || var4 # 10
    var3 || var5 # "hey"
    var1 || var3 || var5 # true
    var2 || var3 || var5 # 10
    !var1 # false
    !var3 # false
     !var4 # true
    !var5 # false
  end

  def bitwise_fun do
    # for this we have to use Bitwise module, else it throws ** (CompileError) iex:48: undefined function &&&/2
    # var20 = 20
    # var10 = 10
    # varstr1 = "hey"
    # varstr2 = "hello"

    #res1 = var10 &&& var20 # 0
    #res1 = var10 ||| var20 # 30
    #res1 = var10 >>> 1 # 5 (shifts right one bit)
    #res1 = var20 <<< 0 # 80 (shifts left two bits)
    #res1 = 1 ^^^ 2 # 3
    #res1 = ~~~ var10 # -11 (does some complement operation on bits)
  end

  def misc_fun do
    # String Concatination <>, here + won't work with strings
    IO.puts ("hey"<>" "<>"hello")

    # Pipe |>
    (4+3) |> IO.puts

    # Pin operator ^
    a = 20
    a = 30
    ^a = 40 #Match error

    # String match =~
    IO.puts("I'm there" =~ "'m") #true

    # Code point ?
    IO.puts(?a) # 97

    # in operator
    var1 = [10, 20]
    10 in var1 #true
  end
end
# Basic_operators.arithmetic_fun
# Basic_operators.comparision_fun
# Basic_operators.logical_fun
# Basic_operators.bitwise_fun
# Basic_operators.misc_fun

