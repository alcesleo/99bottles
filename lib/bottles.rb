class Bottles
  def song
    verses(99, 0)
  end

  def verses(from, to)
    (to..from).to_a.reverse.map { |count| verse(count) }.join("\n")
  end

  def verse(count)
    case count
    when 0
      <<~VERSE
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    else
      <<~VERSE
        #{count} #{container(count)} of beer on the wall, #{count} #{container(count)} of beer.
        Take #{pronoun(count)} down and pass it around, #{quantity(count - 1)} #{container(count - 1)} of beer on the wall.
      VERSE
    end
  end

  def container(amount)
    if amount == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun(amount)
    if amount == 1
      "it"
    else
      "one"
    end
  end

  def quantity(amount)
    if amount == 0
      "no more"
    else
      amount.to_s
    end
  end
end
