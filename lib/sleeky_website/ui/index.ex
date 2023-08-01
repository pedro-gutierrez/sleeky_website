defmodule SleekyWebsite.UI.Index do
  @moduledoc false
  use Sleeky.UI.View

  render do
    html do
      head do
        meta charset: "utf-8"
        title "Sleeky Framework"
        link rel: "stylesheet", href: "/assets/css/bulma.min.css"
        link rel: "stylesheet", href: "/assets/css/fa.min.css"
      end

      body do
        section class: "hero container has-text-centered" do
          div class: "hero-body" do
            p class: "title is-1 is-bold" do
              "Sleeky Framework"
            end

            p class: "subtitle" do
              "Declarative UIs and Apis in Elixir"
            end

            a href: "https://github.com/pedro-gutierrez/sleeky.git", class: "has-text-black" do
              span class: "icon is-large" do
                i(class: "fa-brands fa-github fa-4x")
              end
            end
          end
        end
      end
    end
  end
end
