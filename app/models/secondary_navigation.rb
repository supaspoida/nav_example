class SecondaryNavigation < Struct.new(:collection, :current_item)

  class Item < Struct.new(:item, :current_item)
    def selector
      'active' if item.selector == current_item.selector
    end

    def method_missing(name, *args, &blk)
      item.send(name, *args, &blk)
    end
  end

  def items
    collection.map { |item| Item.new(item, current_item) }
  end

end
