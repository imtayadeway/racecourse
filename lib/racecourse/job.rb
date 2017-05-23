module Racecourse
  class Job
    def initialize(data)
      @data = data
    end

    def title
      data[:title]
    end

    def dates
      data[:dates]
    end

    def employer
      data[:employer]
    end

    def city
      data[:city]
    end

    def state
      data[:state]
    end

    def achievements
      data[:achievements]
    end

    private

    attr_reader :data
  end
end
