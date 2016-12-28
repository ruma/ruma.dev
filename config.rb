Time.zone = "UTC"

set :base_url, ""

page "/news/feed.atom", layout: false
page '/docs/index.html', layout: :layout
page '/docs/*', layout: :docs
page '/projects/*', layout: :projects

activate :blog do |blog|
  blog.default_extension = ".md"
  blog.generate_day_pages = false
  blog.generate_month_pages = false
  blog.generate_tag_pages = false
  blog.generate_year_pages = false
  blog.layout = "news"
  blog.paginate = true
  blog.per_page = 3
  blog.permalink = "this-week-in-ruma-{year}-{month}-{day}.html"
  blog.prefix = "news"
  blog.sources = "{year}-{month}-{day}.html"
end

activate :directory_indexes

configure :development do
  activate :livereload
end

configure :build do
  set :base_url, "https://www.ruma.io"

  activate :asset_hash
  activate :asset_host, host: ''
  activate :minify_css
  activate :minify_javascript
end

helpers do
  def full_url_for(url, options = {})
    url_for("#{config.base_url}#{url}", options)
  end
end
