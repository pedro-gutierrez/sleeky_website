defmodule SleekyWebsite.Ui.Index do
  @moduledoc false
  use Sleeky.Ui.View

  alias SleekyWebsite.Ui.Layout

  render do
    view Layout do
      content do
        div class: "hero-body" do
          p class: "title is-1 is-bold" do
            "Sleeky Framework"
          end

          p class: "subtitle" do
            "Declarative WebApps in Elixir"
          end

          a href: "https://hexdocs.pm/sleeky/api-reference.html", class: "has-text-black mr-2" do
            span class: "icon is-large" do
              i(class: "fa-solid fa-book fa-3x")
            end
          end

          a href: "https://github.com/pedro-gutierrez/sleeky.git", class: "has-text-black ml-2" do
            span class: "icon is-large" do
              i(class: "fa-brands fa-github fa-3x")
            end
          end
        end
      end
    end
  end
end
