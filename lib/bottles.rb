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

    def next_amount
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
    "#{quantity(count).capitalize} #{container(count)} of beer on the wall, " +
    "#{quantity(count)} #{container(count)} of beer.\n" +
    "#{action(count)}, " +
    "#{quantity(next_amount(count))} #{container(next_amount(count))} of beer on the wall.\n"
  end

  def container(amount)
    BottleCount.new(amount).container
  end

  def pronoun(amount)
    BottleCount.new(amount).pronoun
  end

  def quantity(amount)
    BottleCount.new(amount).quantity
  end

  def next_amount(amount)
    BottleCount.new(amount).next_amount
  end

  def action(amount)
    BottleCount.new(amount).action
  end
end
