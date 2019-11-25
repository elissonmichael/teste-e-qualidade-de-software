
class Backpack
    attr_reader :slots
    def initialize(capacity)
        @capacity = capacity
        @slots    = []
    end

    def items
        slots.map(&:item)
    end

    def add(item)
        return                           if available_space <= item.size
        return slot_with(item).increment if slots.include?(slot_with(item))
        @slots << Slot.new(item)
    end
    
    def available_space
        @capacity - used_space
    end

    def quantity(item)
        (slot_with(item) && slot_with(item).quantity) || 0
    end

    def slot_with(item)
        slots.detect { |slot| slot.item == item }
    end

    def used_space
        slots.map(&:size).reduce(:+) || 0
    end
end

class Slot
    attr_reader :quantity, :item
    def initialize(item)
        @item     = item
        @quantity = 1
    end

    def size
        quantity * item.size
    end

    def increment
        @quantity += 1 
    end
end

#class Item
#    attr_accessor :name, :size
#    def initialize(name, size)
#        @name = name
#        @size = size
#    end
#end
