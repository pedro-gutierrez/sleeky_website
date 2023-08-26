defmodule SleekyWebsite.Ui.QuickStartDemo do
  @moduledoc false
  use Sleeky.Ui.View

  render do
    script(
      src: "https://asciinema.org/a/14.js",
      id: "asciicast-14",
      async: "async",
      "data-autoplay": "true",
      "data-theme": "nord"
    )
  end
end
