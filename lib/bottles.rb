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
    when 1
      <<~VERSE
        1 bottle of beer on the wall, 1 bottle of beer.
        Take it down and pass it around, no more bottles of beer on the wall.
      VERSE
    when 2
      <<~VERSE
        2 bottles of beer on the wall, 2 bottles of beer.
        Take one down and pass it around, 1 bottle of beer on the wall.
      VERSE
    else
      <<~VERSE
        #{count} bottles of beer on the wall, #{count} bottles of beer.
        Take one down and pass it around, #{count - 1} bottles of beer on the wall.
      VERSE
    end
  end
end
