defmodule SleekyWebsite.Ui.Index do
  @moduledoc false
  use Sleeky.Ui.View

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
              div class: "columns is-3" do
                div class: "column is-mobile" do
                  h1 class: "title is-1 has-text-weight-medium" do
                    markdown("**Sleek** Elixir applications")
                  end

                  div class: "content is-size-4" do
                    markdown class: "block" do
                      """
                        **Sleeky** is a new framework that allows you
                      to build **lean**, **batteries included** web applications in a **fast**<br/>
                      and **declarative** way.
                      """
                    end
                  end

                  view Features do
                    items do
                      [
                        [title: "Ash inspired"],
                        [title: "Ecto based"],
                        [title: "Phoenix compatible"]
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

                div class: "column" do
                end
              end
            end
          end
        end
      end
    end
  end
end
