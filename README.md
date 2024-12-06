# Elixir Enum.each and throw Exception Handling

This repository demonstrates an uncommon bug related to using `Enum.each` with `throw` in Elixir.  The issue arises from `Enum.each` not being designed for exceptional scenarios requiring early termination.  The solution showcases a safer and more idiomatic way to handle this situation.

**Bug:** The provided `bug.ex` file contains an example where `Enum.each` is used to iterate over a list.  If a certain condition is met (number 3 in this case), a `throw` statement is executed. While `throw` works, it doesn't gracefully terminate `Enum.each`'s iteration resulting in potential side effects.