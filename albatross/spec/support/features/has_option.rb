module Capybara
  module Node
    class Element
      def has_option?(option)
        option_texts = all('option').map { |opt| opt.text }
        option_texts.include? option
      end
    end
  end
end
