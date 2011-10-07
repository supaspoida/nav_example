require 'ostruct'

class Page
  include Informal::Model

  attr_accessor :selector, :text

  def self.all
    [
      { selector: 'first' , text: 'first'  },
      { selector: 'second', text: 'second' },
      { selector: 'third' , text: 'third'  }
    ].map &method(:new)
  end

  def self.find(selector)
    all.detect { |p| p.selector == selector }
  end

  def selector
    @selector || "nothing_active"
  end

  def to_param
    selector
  end

  def persisted?
    true
  end

end
