defmodule Ghtrends do
  @moduledoc """
  Documentation for `Ghtrends`.
  """

  @doc """
  """
  def main(_) do
    trend_list() |> Enum.each(fn x -> IO.puts(x) end)
  end

  @spec trend_list :: charlist()
  def trend_list() do
    "https://github-trending-api.now.sh/"
    |> HTTPoison.get!()
    |> Map.get(:body)
    |> Poison.decode!()
    |> Enum.map(fn x -> format(x) end)
  end

  @spec format(map()) :: String.t()
  def format(map) do
    Map.get(map, "name")  <> " | " <> Map.get(map, "url")
  end
end
