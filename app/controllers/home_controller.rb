class HomeController < ApplicationController
  def index
    if params[:id]
      url = Url.find(params[:id])
      url.update(hits: url.hits+1)
      redirect_to url.original_url
    else
      redirect_to new_url_path, notice: "Enter a url to shorten!"
    end
  end
end
