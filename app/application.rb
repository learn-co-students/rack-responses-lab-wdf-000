class Application

  def call(env)
    resp = Rack::Response.new
    h = Time.now.hour
    if h < 12
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end
    resp.finish
  end

end
