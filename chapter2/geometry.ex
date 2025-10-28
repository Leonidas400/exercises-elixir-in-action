defmodule Geometry do
  def rectangle_area(a,b) do
    a * b
  end

  def squat_area(a) do
    rectangle_area(a,a)
  end

end
