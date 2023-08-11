defmodule SleekyWebsite.Ui.Hero do
  use Sleeky.Ui.View

  render do
    div class: "mt-6" do
      p class: "title" do
        i(class: "{{ icon }} ")

        span class: "is-block" do
          slot :title
        end
      end

      p class: "subtitle" do
        slot :slogan
      end
    end
  end
end
