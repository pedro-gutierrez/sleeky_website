defmodule SleekyWebsite.Ui do
  @moduledoc false
  use Sleeky.Ui

  ui do
    bindings app: :sleeky_website do
      "documentation.js"
      "search.js"
    end

    view SleekyWebsite.Ui.Index
    view SleekyWebsite.Ui.Documentation
  end
end
