class Navigation < Struct.new(:page)

  def current_selector
    page.selector
  end

  def items
    Page.all
  end

end
