abc = "from T"           #T ------------------+
                                             #|   
defmodule Lexical_module do       #M -------+ |
  abc = "from M"                           #| |  # M: Module scope
  def fact() do               #F ---------+ | |  # T: Top level scope
    abc = "from F"                       #| | |  # F: function scope              
    if true do                    #C ---+ | | |  # C: comprehension's scope (conditional, looping, Try Catch, Anonymous functions)
      abc = "from C"                     #| | |
      IO.puts(abc)                       #| | |
    end                         #C -----+ | | |
    # IO.puts(abc)                       #| | |
  end                        #F ----------+ | |
  # IO.puts(abc)                           #| |
end                     #M -----------------+ |
# IO.puts(abc)         #----------------------+
Lexical_module.fact()


#+------------------------------------------------------------+
#| Top level                                                  |
#|                                                            |
#|  +------------------------+     +------------------------+ |
#|  | Module                 |     | Module                 | |
#|  |                        |     |                        | |
#|  | +--------------------+ |     | +--------------------+ | |
#|  | | Function clause    | |     | | Function clause    | | |
#|  | |                    | |     | |                    | | |
#|  | | +----------------+ | |     | | +----------------+ | | |
#|  | | | Comprehension  | | |     | | | Comprehension  | | | |
#|  | | +----------------+ | |     | | +----------------+ | | |
#|  | | +----------------+ | | ... | | +----------------+ | | |
#|  | | | Anon. function | | |     | | | Anon. function | | | |
#|  | | +----------------+ | |     | | +----------------+ | | |
#|  | | +----------------+ | |     | | +----------------+ | | |
#|  | | | Try block      | | |     | | | Try block      | | | |
#|  | | +----------------+ | |     | | +----------------+ | | |
#|  | +--------------------+ |     | +--------------------+ | |
#|  +------------------------+     +------------------------+ |
#|                                                            |
#+------------------------------------------------------------+