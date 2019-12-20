class Application

  def call(env)
    resp = Rack::Response.new

    time_now = Time.now
    resp.write "#{time_now.hour}"
    resp.write " : #{time_now.min}"
    resp.write " : #{time_now.sec}\n"

    if time_now.hour > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end      

    resp.finish
  end

end
