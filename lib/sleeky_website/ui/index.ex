defmodule SleekyWebsite.Ui.Index do
  @moduledoc false
  use Sleeky.Ui.View

  alias SleekyWebsite.Ui.QuickStartDemo

  alias SleekyWebsite.Ui.{
    Layout,
    Features
  }

  @sleeky_version :sleeky |> Application.spec() |> Keyword.get(:vsn) |> List.to_string()

  render do
    view Layout do
      content do
        section class: "section hero" do
          div class: "hero-body" do
            div class: "container" do
              div class: "columns is-3 is-vcentered" do
                div class: "column is-mobile is-two-fifths" do
                  h1 class: "title is-1 has-text-weight-medium" do
                    markdown("**Sleek** and **productive** Elixir applications")
                  end

                  div class: "content is-size-4" do
                    markdown class: "block" do
                      """
                        **Sleeky** is a free, open source framework that allows you
                      to build **lean** applications in a **fast** and **declarative** way.
                      """
                    end
                  end

                  view Features do
                    items do
                      [
                        [title: "Ash inspired"],
                        [title: "Ecto centric"],
                        [title: "Productivity focused"],
                        [title: "Batteries included"],
                        [title: "Phoenix friendly"]
                      ]
                    end
                  end

                  nav class: "mt-5 columns is-1" do
                    div class: "column" do
                      a class: "button is-flex is-primary is-large",
                        href: "https://github.com/pedro-gutierrez/sleeky.git" do
                        strong("Source")
                      end
                    end

                    div class: "column" do
                      a class: "button is-flex is-primary is-large is-light",
                        href: "https://hexdocs.pm/sleeky/api-reference.html" do
                        strong("Hex Docs")

                        span class: "mx-1" do
                          "v#{@sleeky_version}"
                        end
                      end
                    end
                  end
                end

                div class: "column px-6" do
                  view QuickStartDemo
                end
              end
            end
          end
        end
      end
    end
  end
end
