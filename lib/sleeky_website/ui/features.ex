defmodule SleekyWebsite.Ui.Features do
  @moduledoc false

  use Sleeky.Ui.View

  render do
    div class: "columns is-multiline is-mobile is-3" do
      each :items do
        div class: "column is-one-third" do
          div class: "has-text-success has-text-weight-bold is-size-4" do
            span class: "icon" do
              i(class: "fas fa-check-square")
            end

            span class: "ml-2" do
              "{{ item.title }}"
            end
          end

          div do
            markdown class: "block" do
              "{{ item.summary }}"
            end
          end
        end
      end
    end
  end
end
