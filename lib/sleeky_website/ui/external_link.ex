defmodule SleekyWebsite.Ui.ExternalLink do
  @moduledoc false

  use Sleeky.Ui.View

  render do
    a href: "{{ url }}", class: "has-backgound-pink has-color-white mx-1 p-3 button" do
      slot :title
    end
  end
end
