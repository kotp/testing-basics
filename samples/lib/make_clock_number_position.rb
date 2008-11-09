  # make_clock_number_position.rb
  def position h
    r = 150
    theta = (h * 60.0) * 360 / (24 * 60.0)
    case h
      when 0..6
        radian = theta * Math::PI / 180.0
        x = r + r * Math.sin(radian)
        y = r - r * Math.cos(radian)
      when 7..12
        radian = (theta - 90.0) * Math::PI / 180.0
        y = r + r * Math.sin(radian)
        x = r + r * Math.cos(radian)
      when 13..18
        radian = (theta - 180.0) * Math::PI / 180.0
        x = r - r * Math.sin(radian)
        y = r + r * Math.cos(radian)
      when 19..24
        radian = (theta - 270.0) * Math::PI / 180.0
        y = r - r * Math.sin(radian)
        x = r - r * Math.cos(radian)
      else
    end
    return x.to_i, y.to_i
  end
      
  24.times{|h| print position(h).inspect + ', '}
  puts

