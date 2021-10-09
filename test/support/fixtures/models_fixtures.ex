defmodule Todolist.ModelsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Todolist.Models` context.
  """

  @doc """
  Generate a todo.
  """
  def todo_fixture(attrs \\ %{}) do
    {:ok, todo} =
      attrs
      |> Enum.into(%{
        completed: true,
        title: "some title"
      })
      |> Todolist.Models.create_todo()

    todo
  end
end
