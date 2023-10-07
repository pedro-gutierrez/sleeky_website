defmodule SleekyWebsite.Ui.Documentation do
  @moduledoc false
  use Sleeky.Ui.View

  alias SleekyWebsite.Ui.Layout

  render do
    view Layout do
      slot :content do
        section class: "section hero" do
          div class: "hero-body" do
            div class: "container" do
              view SleekyWebsite.Ui.MarkdownGuides
            end
          end
        end
      end
    end
  end
end
