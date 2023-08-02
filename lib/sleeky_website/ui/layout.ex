defmodule SleekyWebsite.UI.Layout do
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
          slot :content
        end

        div class: "footer has-background-white" do
          div class: "content has-text-centered" do
            p do
              "Made with"
              i(class: "ml-1 mr-1 fa-solid fa-heart has-text-danger")
              "in Elixir"
            end
          end
        end
      end
    end
  end
end
