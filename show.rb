
class Show
    attr_accessor :app

    def initalize
        @app = App.new
    end

    def morpion
        while true
            @app.launch_round
        end
    end

end

