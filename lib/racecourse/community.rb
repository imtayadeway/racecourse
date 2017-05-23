module Racecourse
  class Community
    def initialize(data)
      @data = data
    end

    def blogposts
      Array(data[:blogposts]).map { |b| Blogpost.new(b) }
    end

    def talks
      Array(data[:talks]).map { |t| Talk.new(t) }
    end

    def other
      Array(data[:other])
    end

    private

    attr_reader :data

    class Blogpost
      def initialize(data)
        @data = data
      end

      def title
        data[:title]
      end

      def link
        data[:link]
      end

      private

      attr_reader :data
    end

    class Talk
      def initialize(data)
        @data = data
      end

      def title
        data[:title]
      end

      def link
        data[:link]
      end

      private

      attr_reader :data
    end
  end
end
