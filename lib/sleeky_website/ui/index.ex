defmodule SleekyWebsite.Ui.Index do
  @moduledoc false
  use Sleeky.Ui.View

  # alias SleekyWebsite.Ui.QuickStartDemo

  alias SleekyWebsite.Ui.{
    Layout,
    Features
  }

  @sleeky_version :sleeky |> Application.spec() |> Keyword.get(:vsn) |> List.to_string()

  render do
    view Layout do
      slot :content do
        div do
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
                    # view QuickStartDemo
                  end
                end
              end
            end
          end

          section class: "section hero has-background-white-bis" do
            div class: "hero-body" do
              div class: "container" do
                view Features do
                  slot :items do
                    [
                      [
                        title: "Ash inspired",
                        summary:
                          "Sleeky adheres to the exact same **model your domain, derive the rest** philosophy from **Ash**"
                      ],
                      [
                        title: "Ecto centric",
                        summary:
                          "Everything in Sleeky gravitates around entities, and entities are **enhanced Ecto schemas**"
                      ],
                      [
                        title: "Self migrated",
                        summary:
                          "Sleeky keeps track of your schema changes and **automatically** figures out the right database **migrations**, so you don't have to"
                      ],
                      [
                        title: "Productivity focused",
                        summary:
                          "Sleeky is **opinionated** and makes some **decisions** for you, so that you can focus on the core of your problem"
                      ],
                      [
                        title: "Batteries included",
                        summary:
                          "Background jobs, authorization, search, pub-sub, observability... Sleeky takes you as close to **production readiness** as possible"
                      ],
                      [
                        title: "Phoenix friendly",
                        summary:
                          "**Pick** the features you like the most from Sleeky and use them in your **favourite** Elixir framework"
                      ]
                    ]
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
