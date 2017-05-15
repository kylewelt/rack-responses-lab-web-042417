class Application

  def call(env)
    resp = Rack::Response.new
    hour = Time.now.hour

    if hour < 13
      resp.write "Good Morning!\n"
    else
      resp.write "Good Afternoon!\n"
    end

    resp.finish
  end

end
