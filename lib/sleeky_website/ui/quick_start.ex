defmodule SleekyWebsite.Ui.QuickStart do
  @moduledoc false

  use Sleeky.Ui.View

  render do
    div class: "columns is-mobile is-centered" do
      div class: "column is-half" do
        pre class: "has-background-white-bis" do
          code("mix archive.install sleeky.new")

          br do
          end

          code("mix sleeky.new hello_world")
        end
      end
    end
  end
end
