defmodule SleekyWebsite.Ui.DocumentationSearch do
  @moduledoc false

  use Sleeky.Ui.View

  render do
    div class: "dropdown is-right is-active",
        "data-search": "documentation",
        "data-search-control": "#search-control",
        "data-search-result": "#search-result" do
      div class: "dropdown-trigger" do
        p id: "search-control", class: "control has-icons-left" do
          input class: "input is-rounded is-primary",
                type: "text",
                placeholder: "Search documentation",
                autocomplete: "off",
                spellcheck: "false" do
          end

          span class: "icon is-small is-left has-text-primary" do
            i(class: "fas fa-search")
          end
        end
      end

      div class: "dropdown-menu", id: "dropdown-menu", role: "menu" do
        div class: "dropdown-content" do
          template id: "search-result" do
            a "data-href": "/documentation#${guide}", class: "dropdown-item" do
              span "data-field": "content"
            end
          end
        end
      end
    end
  end
end
