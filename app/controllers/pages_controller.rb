class PagesController < ApplicationController

  expose(:navigation) { Navigation.new(page) }
  expose(:page) { Page.find(params[:id]) || Page.new }

end
