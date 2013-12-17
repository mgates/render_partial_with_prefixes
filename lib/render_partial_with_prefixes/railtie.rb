module RenderPartialWithPrefixes
  class Railtie < Rails::Railtie
    ActiveSupport.on_load :action_view do
      warn "Applying RenderPartialWithPrefixes, but not on a version I know" unless Rails.version == "4.0.2"
      warn "Applying RenderPartialWithPrefixes, and I think I know what I'm doing" if Rails.version == "4.0.2"
      ActionView::PartialRenderer.send :include, RenderPartialWithPrefixes::MonkeyPatch
    end
  end
end

