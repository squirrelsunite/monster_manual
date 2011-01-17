require 'capybara'

module Capybara
  class Session
    def has_text?(text, options={})
      raw = all(:xpath, '.').map(&:text).join
      count = raw.scan(text).size
      #puts "TEXT = #{text}, COUNT = #{count}, RAW = #{raw}"
      if options[:count]
        count == options[:count]
      else
        count > 0
      end
    end
  end
end
