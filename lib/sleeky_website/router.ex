defmodule SleekyWebsite.Router do
  @moduledoc false
  use Sleeky.Router,
    otp_app: :sleeky_website,
    plugs: [SleekyWebsite.PutUser]
end
