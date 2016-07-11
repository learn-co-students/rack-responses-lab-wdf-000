class Application
  def call(env)
    if Time.now.hour < 12
      greeting = "Good Morning."
    else
      greeting = "Good Afternoon."
    end 
    
    resp = Rack::Response.new
    resp.write greeting
    resp.finish
  end
end
