if defined? Rails.configuration
  Rails.configuration.after_initialize do
    I18n.instance_eval do
      alias :normalize_translation_keys :normalize_keys
    end
  end
end
