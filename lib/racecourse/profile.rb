module Racecourse
  class Profile
    def initialize(data)
      @data = data
    end

    def name
      data[:name]
    end

    def address
      data[:address]
    end

    def telephone
      data[:telephone]
    end

    def email
      data[:email]
    end

    def profile
      data[:profile]
    end

    def work_history
      Array(data[:work_history]).map { |j| Job.new(j) }
    end

    def community
      Community.new(data[:community])
    end

    def skills
      Array(data[:skills])
    end

    def education
      Array(data[:education]).map { |s| School.new(s) }
    end

    def internships
      Array(data[:internships]).map { |i| Internship.new(i) }
    end

    def certificates
      Array(data[:certificates])
    end

    private

    attr_reader :data
  end
end
