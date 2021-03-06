require "translations/translation"

module Translations
  class TranslationCollection
    include Enumerable

    attr_reader :master

    def initialize translations, master
      @translations = translations
      @master = @translations.select { |translation| translation.locale == master }.first
    end

    def each
      @translations.each { |translation| yield translation }
    end

    def for_locale locale
      @translations.select { |translation| translation.locale == locale }.first
    end

    def slaves
      @translations.reject { |translation| translation == master }
    end

    def remove key
      @translations.each { |translation| translation.remove key }
    end

    def move from, to
      @translations.each { |translation| translation.move from, to }
    end
  end
end
