class ApiVersionConstraint
    def initialize(options)
        @version = options[:version]
        @version = options[:default]
    end

    def matches?(req)
        @default || req.headers['Accept'].include?("application/vnd.taskmanager.v#{@version}")        
    end
end