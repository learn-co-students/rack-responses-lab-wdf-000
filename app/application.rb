class Application
  def call(env)
    response = Rack::Response.new

    current_time = Time.now

    if current_time.hour.between?(0, 12)
      response.write "Good Morning!"
    else
      response.write "Good Afternoon!"
    end

    response.finish
  end
end
