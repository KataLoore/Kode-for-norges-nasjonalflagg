use context essentials2021
fun draw-yin-and-yang(radius) -> Image:
  circle-50-outline-black = circle(radius, "outline", "black")
  circle-50-solid-white = circle(radius, "solid", "white")
  circle-50-solid-black = circle(radius, "solid", "black")
  half-circle-50-black = crop(radius, 0, 2 * radius, 2 * radius, circle-50-solid-black)
  circle-25-solid-white = circle(radius / 2, "solid", "white")
  circle-8-solid-black = circle(radius / 10, "solid", "black")
  circle-25-solid-black = circle(radius / 2, "solid", "black")
  circle-8-solid-white = circle(radius / 10, "solid", "white")
  combine-outline-with-circle = overlay-align("pinhole", "middle", circle-50-outline-black, circle-50-solid-white)
  combine-outline-with-circle-with-half-circle = overlay-align("pinhole", "middle", half-circle-50-black, combine-outline-with-circle)
  combine-circle-25-black-with-circle-8-white = overlay-align("pinhole", "middle", circle-8-solid-white, circle-25-solid-black)
  combine-circle-25-white-with-circle-8-black = overlay-align("pinhole", "middle", circle-8-solid-black, circle-25-solid-white)
  combine-circle-25-white-with-circle-8-black-with-outline-with-circle-with-half-circle = overlay-align("pinhole", "top", combine-circle-25-white-with-circle-8-black, combine-outline-with-circle-with-half-circle)
  overlay-align("pinhole", "bottom", combine-circle-25-black-with-circle-8-white, combine-circle-25-white-with-circle-8-black-with-outline-with-circle-with-half-circle)
end

draw-yin-and-yang(150)
