class Navigation < Struct.new(:page)

  def self.selectors
    Page.all.map(&:selector).join(' ')
  end

  def current_selector
    page.selector
  end

  def items
    Page.all
  end

end
