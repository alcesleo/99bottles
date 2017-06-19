class Bottles
  class BottleCount
    attr_reader :number
    private :number

    def initialize(number)
      @number = number
    end

    def to_s
      "#{quantity} #{container}"
    end

    def container
      "bottles"
    end

    def quantity
      number.to_s
    end

    def action
      "Take #{pronoun} down and pass it around"
    end

    def pronoun
      "one"
    end

    def succ
      number - 1
    end
  end
  private_constant :BottleCount

  class BottleCount0 < BottleCount
    def quantity
      "no more"
    end

    def action
      "Go to the store and buy some more"
    end

    def succ
      99
    end
  end
  private_constant :BottleCount0

  class BottleCount1 < BottleCount
    def container
      "bottle"
    end

    def pronoun
      "it"
    end
  end
  private_constant :BottleCount1
end
