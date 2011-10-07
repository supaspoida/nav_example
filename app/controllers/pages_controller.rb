class PagesController < ApplicationController

  expose(:navigation) { Navigation.new }

end
