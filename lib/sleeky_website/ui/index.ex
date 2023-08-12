defmodule SleekyWebsite.Ui.Index do
  @moduledoc false
  use Sleeky.Ui.View

  alias SleekyWebsite.Ui.{
    ExternalLink,
    Hero,
    LatestRelease,
    Layout,
    QuickStart
  }

  render do
    view Layout do
      content do
        div do
          view Hero do
            icon("fa-solid fa-droplet")
            title "SLEEKY"
            slogan("ELIXIR APPLICATIONS")
          end

          view QuickStart

          view LatestRelease

          p class: "mt-4" do
            view ExternalLink do
              title "Hex Docs"
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
end
