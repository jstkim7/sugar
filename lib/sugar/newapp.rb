module Sugar
  class NewApp

    def initialize(app_name, app_location="..")
      @app_name = app_name
      @app_location = set_app_location(app_location)
    end

    def set_app_location(app_location)
      if app_location[-1] != "/"
        return app_location + "/"
      end
      return app_location
    end

    def make_new_app()
      exec("rails new "+@app_location+@app_name+" --skip-test-unit")
    end
  end
end