defmodule Mango.Catalog do
  alias Mango.Catalog.Product
  def list_products do
    p1 = %Product{ name: "Tomato", price: 50,is_seasonal: false}

    p2 = %Product{ name: "Apple",price: 100, is_seasonal: true}

    [p1,p2]
  end

  def list_seasonal_products do
    list_products() |> Enum.filter(fn(p) -> p.is_seasonal == true end)
  end
end
