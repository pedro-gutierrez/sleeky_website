defmodule SleekyWebsite.Ui.Features do
  @moduledoc false

  use Sleeky.Ui.View

  render do
    div do
      div do
        each :items do
          div class: "has-text-success has-text-weight-bold is-size-4" do
            span class: "icon" do
              i(class: "fas fa-check-square")
            end

            span class: "ml-2" do
              "{{ item.title }}"
            end
          end
        end
      end
    end
  end
end
