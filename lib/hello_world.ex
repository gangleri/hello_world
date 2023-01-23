defmodule HelloWorld do
  def get_name(args) do
    case args do
      [] ->
        String.trim(IO.gets("What is your name > "))

      [n | _] ->
        n
    end
  end

  def main(args) do
    name = get_name(args)
    IO.puts(IO.ANSI.green() <> "Hello, #{name}!" <> IO.ANSI.reset())
  end
end
