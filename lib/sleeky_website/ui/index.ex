defmodule SleekyWebsite.Ui.Index do
  @moduledoc false
  use Sleeky.Ui.View

  alias SleekyWebsite.Ui.ExternalLink
  alias SleekyWebsite.Ui.Layout
  alias SleekyWebsite.Ui.QuickStart

  render do
    view Layout do
      content do
        div do
          p class: "title is-1 is-bold" do
            "Sleeky Framework"
          end

          p class: "subtitle" do
            "Declarative WebApps in Elixir"
          end

          view QuickStart

          view ExternalLink do
            title "Docs"
            url("https://hexdocs.pm/sleeky/api-reference.html")
            icon("fa-solid fa-book-open")
          end

          view ExternalLink do
            title "Source"
            url("https://github.com/pedro-gutierrez/sleeky.git")
            icon("fa-brands fa-github")
          end
        end
      end
    end
  end
end
