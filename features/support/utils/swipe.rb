class SwipeHelper
  def swipe_left
    action = TouchAction.new.swipe(start_x: 146, start_y: 1044, end_x: 517, end_y: 517, duration: 500)
    action.perform
  end
  def swipe_right
    action = TouchAction.new.swipe(start_x: 1044, start_y: 146, end_x: 517, end_y: 517, duration: 500)
    action.perform
  end
end