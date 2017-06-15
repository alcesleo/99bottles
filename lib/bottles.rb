class Bottles
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

  def next_amount(amount)
    if amount == 0
      99
    else
      amount - 1
    end
  end

  def action(amount)
    if amount == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(amount)} down and pass it around"
    end
  end
end
