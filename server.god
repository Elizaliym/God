God.watch do |w|
  w.name = "echo"
  w.start = "ruby C:\Users\El\Desktop\Work\Echo\echo.rb"
  w.restart_if do |restart|
  restart.condition (:cpu_usage) do |c|
	c.above = 15.percent
	c.times = 10
	end
  end
end