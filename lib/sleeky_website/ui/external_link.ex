defmodule SleekyWebsite.Ui.ExternalLink do
  @moduledoc false

  use Sleeky.Ui.View

  render do
    a href: "{{ url }}", class: "mx-2" do
      span class: "icon" do
        i(class: "{{ icon }}")
      end

      span do
        slot :title
      end
    end
  end
end
