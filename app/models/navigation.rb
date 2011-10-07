require 'ostruct'

class Navigation

  def current_selector
    "first"
  end

  def items
    [
      { selector: 'first' , text: 'first'  },
      { selector: 'second', text: 'second' }
    ].map &OpenStruct.method(:new)
  end

end
