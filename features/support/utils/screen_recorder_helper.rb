class ScreenRecorderHelper

  def start_recording
    $driver.start_recording_screen bug_report: true
  end

end
