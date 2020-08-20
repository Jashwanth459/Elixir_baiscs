defmodule Basic_types do
    def booleans_fun do
        temp = true
        IO.puts is_boolean(temp)
        temp = false
        IO.puts is_boolean(temp)
        temp = nil
        IO.puts is_nil(temp)
        IO.puts is_boolean(temp)
        temp = 0
        IO.puts is_number(temp)
    end
    def atom_fun do
        # Atom is a constant for a quick use value as the own name
        :ok
        :true
        :error
        check = :ok == 'ok'
        boolean_check = true === :true
        IO.puts :ok
        IO.puts check
        IO.puts boolean_check
    end
    def strings_fun do
        # Strings in elixir are encoded in UTF-8 format
        # Stings are represented internally by continuous sequence of bytes
        :error
        elixir_message = "working on Elixir"
        # String interpolation
        message = "This is #{:error} free, #{elixir_message}"
        IO.puts message

        hello = "hellö"
        IO.puts is_binary(hello)
        IO.puts byte_size(hello)
        IO.puts String.length(hello)
    end

    def anonymous_fun do
        add = fn (a, b) -> a + b end
        IO.puts is_function(add)

        # Here . is required to invoke the anonymous function
        IO.puts add.(10, 12)
        IO.puts (fn () -> IO.puts('hey, hello') end).()

        # is_function(fun name, number arguments) returns boolean
        IO.puts is_function(add, 3)
    end

    def lists_fun do
        list1 = [97, 98, 99]

        # is_list(list)
        # length(list) - Length of the list
        # List.delete(list, item) - Deletes item
        # List.delete_at(list, index) - Deletes item at index
        # List.first(list) - First element in the list
        # List.last(list) - Last element in the list
        # List.insert_at(list, index, value) - Insert into the list
        # List.flatten(list) - Flattens the list
        # hd(list)
        # tl(list)
    end

    def tuple_fun do
       tuple = {:error, "amazing", 120}

        # is_tuple(tuple)
        # tuple_size(tuple)
        # elem(tuple, 1)
        # Tuple.append(tuple, 'hey')
        # Tuple.insert_at(tuple, 1, [1, 2, 3])
        # Tuple.delete_at(tuple, 1)
        # Tuple.to_list(tuple)
    end

    def map_fun do
       map = %{"one" => :two, 3 => "four", :three => "Three", nice: "nice"}

        # displaying map doesn't follow any order/ it returns data in random order
        # is_map(map)
        # Map.fetch(map, :a) || map[:two] || map.two (accessing the atom key)
        # Map.delete(map, key)
        # Map.equals(map1, map2)
    end
end
# Basic_types.booleans_fun
# Basic_types.atom_fun
# Basic_types.strings_fun
# Basic_types.anonymous_fun
