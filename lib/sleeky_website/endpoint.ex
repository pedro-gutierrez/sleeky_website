defmodule SleekyWebsite.Endpoint do
  @moduledoc false
  use Sleeky.Endpoint, otp_app: :sleeky_website, router: SleekyWebsite.Router
end
