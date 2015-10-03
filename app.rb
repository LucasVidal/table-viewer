require "cuba"
require "rack/protection"

Cuba.use Rack::Session::Cookie, :secret => "__a_very_long_string__"
Cuba.use Rack::Protection

Cuba.define do
  on get do
    on "get-tables" do
    	res.write "{ [] }"
    end

    on root do
      res.redirect "/hello"
    end
  end
end
