defmodule SleekyWebsite.Ui.Navbar do
  @moduledoc false
  use Sleeky.Ui.View

  alias SleekyWebsite.Ui.DocumentationSearch

  render do
    nav class: "navbar py-4 px-6", role: "navigation", "aria-label": "main navigation" do
      div class: "navbar-brand" do
        a class: "navbar-item", href: "/" do
          i(class: "fa-solid fa-fire-flame-curved fa-2x has-text-danger-dark")

          span class: "title ml-2 has-text-weight-bold" do
            "SLEEKY"
          end
        end

        a role: "button", class: "navbar-burger", "aria-label": "menu", "aria-expanded": false do
          span("aria-hidden": true)
          span("aria-hidden": true)
          span("aria-hidden": true)
        end
      end

      div class: "navbar-menu" do
        div class: "navbar-start" do
          each :items do
            a class: "navbar-item", href: "{{ item.url }}" do
              "{{ item.title }}"
            end
          end
        end

        div class: "navbar-end" do
          view DocumentationSearch
        end
      end
    end
  end
end
