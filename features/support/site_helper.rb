module SiteHelper
  def site
    @site ||= (
      Website.new(Watir::Browser.new(ENV['browser'].to_sym))
    )
  end
end
