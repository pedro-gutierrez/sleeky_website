defmodule SleekyWebsite.Ui.LatestRelease do
  use Sleeky.Ui.View

  render do
    p "data-mode": "read",
      "data-scope": "releases",
      "data-id": "latest",
      "data-show": true do
      "Current version: "
      span("data-field": "tag")
    end
  end
end
