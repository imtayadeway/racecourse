module Racecourse
  class Internship
    def initialize(data)
      @data = data
    end

    def title
      data[:title]
    end

    def year
      data[:year]
    end

    def city
      data[:city]
    end

    def state
      data[:state]
    end

    def achievements
      Array(data[:achievements])
    end

    private

    attr_reader :data
  end
end
