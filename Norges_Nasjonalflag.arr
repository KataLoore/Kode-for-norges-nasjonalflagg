use context essentials2021
red-rect = rectangle(300, 200, "solid", "dark red")

white-rect-a = rectangle(30, 200, "solid", "white")

white-rect-b = rectangle(300, 30, "solid", "white")

blue-rect-a = rectangle(20, 200, "solid", "dark blue")

blue-rect-b = rectangle(300, 20, "solid", "dark blue")

underlay-xy((red-rect), 0, 0,
  underlay-xy((white-rect-b), 0, -95,
    underlay-xy((white-rect-a), -95, 0,
      overlay-xy((blue-rect-a), -100, 0,
        overlay-xy((blue-rect-b), 0, -100, empty-image)))))


  


