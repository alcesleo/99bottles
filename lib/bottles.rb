require "./lib/bottle_count"

class Bottles
  def song
    verses(99, 0)
  end

  def verses(from, to)
    from.downto(to).map { |count| verse(count) }.join("\n")
  end

  def verse(count)
    bottle_count = bottle_count_for(count)
    next_bottle_count = bottle_count_for(bottle_count.succ)

    "#{bottle_count} of beer on the wall, ".capitalize +
    "#{bottle_count} of beer.\n" +
    "#{bottle_count.action}, " +
    "#{next_bottle_count} of beer on the wall.\n"
  end

  def bottle_count_for(count)
    case count
    when 0 then BottleCount0.new(count)
    when 1 then BottleCount1.new(count)
    else BottleCount.new(count)
    end
  end
end
