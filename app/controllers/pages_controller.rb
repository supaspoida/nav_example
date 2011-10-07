class PagesController < ApplicationController

  expose(:navigation) { Navigation.new(page) }
  expose(:secondary_navigation) { SecondaryNavigation.new(pages, page) }

  expose(:pages) { Page.secondary }
  expose(:page) { Page.find(params[:id]) || Page.new }

end
