defmodule PocNorm do
  import Norm

  # def s(),
  #  do:
  #    schema(%{
  #      user:
  #        schema(%{
  #          name: spec(is_binary()),
  #          age: spec(is_integer() and (&(&1 > 0)))
  #        })
  #    })

  def s(),
    do:
      schema(%{
        name: spec(is_binary()),
        age: spec(is_integer() and (&(&1 > 0)))
      })

  # input = %{user: %{name: "chris", age: 30, email: "c@keathley.io"}

  # conform!(input, user_schema)
  # => %{user: %{name: "chris", age: 30}}
end
