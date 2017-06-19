class Bottles
  class BottleCount
    attr_reader :number
    private :number

    def self.for(count)
      case count
      when 0 then BottleCount0.new(count)
      when 1 then BottleCount1.new(count)
      else BottleCount.new(count)
      end
    end

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
      self.class.for(number - 1)
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
      self.class.for(99)
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
