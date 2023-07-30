defmodule SleekyWebsite.UI.Index do
  @moduledoc false
  use Sleeky.UI.View

  render do
    html do
      head do
        meta charset: "utf-8"
        title "Welcome to Sleeky"
      end

      body do
        h1 do
          "Welcome to Sleeky!"
        end

        p do
          "Sleek tested, Mother approved."
        end
      end
    end
  end
end
