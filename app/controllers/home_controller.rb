class HomeController < ApplicationController
  def index
    gon.js_config_params = Wx.js_config_params(request.url)
  end
end

