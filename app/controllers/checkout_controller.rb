class CheckoutController < ApplicationController

  redirect_to @session.url, allow_other_host: true

end
