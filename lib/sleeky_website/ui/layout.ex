defmodule SleekyWebsite.Ui.Layout do
  @moduledoc false

  use Sleeky.Ui.View

  alias SleekyWebsite.Ui.Navbar

  render do
    html do
      head do
        meta(charset: "utf-8")
        meta(name: "viewport", content: "width=device-width, initial-scale=1")
        title("Sleeky Framework")
        link(rel: "stylesheet", href: "/assets/css/bulma.min.css")
        link(rel: "stylesheet", href: "/assets/css/fa.min.css")
        link(rel: "stylesheet", href: "/assets/css/ui.css")
        script(src: "/assets/js/s.min.js")
        script(src: "/assets/js/hash.min.js")
        script(src: "/assets/js/sleeky.js")
        script(src: "/assets/js/ui.js", defer: true)
      end

      body do
        view Navbar do
          slot :items do
            [[title: "Documentation", url: "/documentation#overview"]]
          end
        end

        slot :content
      end
    end
  end
end
