require "./lib/bottle_count"

class Bottles
  def song
    verses(99, 0)
  end

  def verses(from, to)
    from.downto(to).map { |count| verse(count) }.join("\n")
  end

  def verse(count)
    bottle_count = BottleCount.for(count)

    "#{bottle_count} of beer on the wall, ".capitalize +
    "#{bottle_count} of beer.\n" +
    "#{bottle_count.action}, " +
    "#{bottle_count.succ} of beer on the wall.\n"
  end
end
