defmodule SleekyWebsite.Ui.Layout do
  @moduledoc false

  use Sleeky.Ui.View

  alias SleekyWebsite.Ui.Navbar

  render do
    html do
      head do
        meta charset: "utf-8"
        meta name: "viewport", content: "width=device-width, initial-scale=1"
        title "Sleeky Framework"
        link rel: "stylesheet", href: "/assets/css/bulma.min.css"
        link rel: "stylesheet", href: "/assets/css/fa.min.css"
        link rel: "stylesheet", href: "/assets/css/extra.css"
        script(src: "/assets/js/s.js")
        script(defer: true, src: "/assets/js/sleeky.js")
      end

      body do
        view Navbar do
          items do
            [[title: "Documentation", url: "/documentation"]]
          end
        end

        slot :content
      end
    end
  end
end
