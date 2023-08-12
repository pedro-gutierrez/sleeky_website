defmodule SleekyWebsite.Ui.Layout do
  @moduledoc false

  use Sleeky.Ui.View

  render do
    html class: "has-background-pink has-text-white" do
      head do
        meta charset: "utf-8"
        title "Sleeky Framework"
        link rel: "stylesheet", href: "/assets/css/bulma.min.css"
        link rel: "stylesheet", href: "/assets/css/sleeky.css"
        link rel: "stylesheet", href: "/assets/css/fa.min.css"
        script(src: "/assets/js/s.js")
        script(defer: true, src: "/assets/js/sleeky.js")
      end

      body class: "has-text-white" do
        section class: "section" do
          div class: "container has-text-centered" do
            slot :content
          end
        end
      end
    end
  end
end
