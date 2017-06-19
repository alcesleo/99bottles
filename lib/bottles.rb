require "./lib/bottle_count"

class Bottles
  def song
    verses(99, 0)
  end

  def verses(from, to)
    from.downto(to).map { |count| verse(count) }.join("\n")
  end

  def verse(count)
    bottle_count = BottleCount.new(count)
    next_bottle_count = BottleCount.new(bottle_count.succ)

    "#{bottle_count} of beer on the wall, ".capitalize +
    "#{bottle_count} of beer.\n" +
    "#{bottle_count.action}, " +
    "#{next_bottle_count} of beer on the wall.\n"
  end
end
