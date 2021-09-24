defmodule FetchData do
  def call do
    Process.sleep(3000)
    [
      %{uuid: "123-foo", year: 2021, customer: "Agriculture, Forestry and Fishing", value: 9.9,status: "paid"},
      %{uuid: "321-bar", year: 2020, customer: "Agriculture, Forestry and Fishing", value: 29.9,status: "pending"},
      %{uuid: "321-zaz", year: 2020, customer: "Agriculture, Forestry and Fishing", value: 99.9,status: "pending"}
    ]
  end
end
