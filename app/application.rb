class Application
  def call(env)
    resp = Rack::Response.new
    resp.write (if Time.now.hour < 12 then "Good Morning!" else "Good Afternoon!" end)
    resp.finish
  end
end
