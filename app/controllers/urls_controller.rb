class UrlsController < ApplicationController

  def show
    @url = Url.find(params[:id])
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    respond_to do |format|
      if @url.save
        format.html { redirect_to url_path(@url), notice: 'Your url was submitted. Check it out!' }
      else
        format.html { redirect_to new_url_path, notice: "Your url was incorrectly formatted, please try again" }
      end
    end
  end

  private
    def url_params
      params.require(:url).permit(:original_url)
    end

end
