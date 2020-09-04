class ScrollHelper
  def scroll_to_element(text)
    until exists{ text(text) } do
      Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.8, end_x: 0.5, end_y: 0.6).perform
    end
  end
  def scroll_up_to_element(text)
    until exists{ text(text) } do
      Appium::TouchAction.new.scroll_to_exact(text)
    end
  end
end