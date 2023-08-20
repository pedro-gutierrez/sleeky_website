defmodule SleekyWebsite.Ui.Features do
  @moduledoc false

  use Sleeky.Ui.View

  render do
    div do
      div class: "columns is-multiline is-gapless" do
        each :items do
          div class: "column has-text-success has-text-weight-bold is-size-4 is-half" do
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
