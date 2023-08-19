defmodule SleekyWebsite.Ui.Index do
  @moduledoc false
  use Sleeky.Ui.View

  alias SleekyWebsite.Ui.{
    Layout,
    Features
  }

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
                        **Sleeky** is a Elixir framework written in <strong
                      class="has-text-danger-dark">Elixir</strong> that allows you
                      to build **lean**, **batteries included** web applications in a **fast** and **declarative** way.
                      """
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

                    nav class: "mt-5" do
                      a class: "button is-primary is-large mr-3",
                        href: "https://github.com/pedro-gutierrez/sleeky.git" do
                        strong("Source")
                      end

                      a class: "button is-primary is-large is-light",
                        href: "https://hexdocs.pm/sleeky/api-reference.html" do
                        strong("Documentation")
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
