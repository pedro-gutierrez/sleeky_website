defmodule SleekyWebsite.Ui.QuickStart do
  @moduledoc false

  use Sleeky.Ui.View

  render do
    p class: "is-family-monospace" do
      "mix archive.install sleeky.new"

      br do
      end

      "mix sleeky.new hello_world"
    end
  end
end
