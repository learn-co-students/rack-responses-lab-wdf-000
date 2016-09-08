class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now.hour.to_i
    if time  < 12
      resp.write "Morning"
    elsif time >= 12
      resp.write "Afternoon"
    end
    resp.finish
  end
end
