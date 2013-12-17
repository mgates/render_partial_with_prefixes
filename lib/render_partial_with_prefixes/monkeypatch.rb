module RenderPartialWithPrefixes
  module MonkeyPatch

    def self.included(base)
      base.class_eval do
        alias_method_chain :find_template, :prefixes
      end
    end

    def find_template_with_prefixes(path, locals)
      prefixes = path.include?(?/) ? [] : (@options[:prefixes] || @lookup_context.prefixes)
      @lookup_context.find_template(path, prefixes, true, locals, @details)
    end

  end
end
