class Bottles
  class BottleCount
    attr_reader :number
    private :number

    def initialize(number)
      @number = number
    end

    def container
      if number == 1
        "bottle"
      else
        "bottles"
      end
    end

    def pronoun
      if number == 1
        "it"
      else
        "one"
      end
    end

    def quantity
      if number == 0
        "no more"
      else
        number.to_s
      end
    end

    def succ
      if number == 0
        99
      else
        number - 1
      end
    end

    def action
      if number == 0
        "Go to the store and buy some more"
      else
        "Take #{pronoun} down and pass it around"
      end
    end
  end
  private_constant :BottleCount

  def song
    verses(99, 0)
  end

  def verses(from, to)
    from.downto(to).map { |count| verse(count) }.join("\n")
  end

  def verse(count)
    bottle_count = BottleCount.new(count)
    next_bottle_count = BottleCount.new(bottle_count.succ)

    "#{bottle_count.quantity.capitalize} #{bottle_count.container} of beer on the wall, " +
    "#{bottle_count.quantity} #{bottle_count.container} of beer.\n" +
    "#{bottle_count.action}, " +
    "#{next_bottle_count.quantity} #{next_bottle_count.container} of beer on the wall.\n"
  end
end
