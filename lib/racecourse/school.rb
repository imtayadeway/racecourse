module Racecourse
  class School
    def initialize(data)
      @data = data
    end

    def institution
      data[:institution]
    end

    def years
      data[:years]
    end

    def city
      data[:city]
    end

    def qualification
      data[:qualification]
    end

    def state
      data[:state]
    end

    private

    attr_reader :data
  end
end
