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
  activate :asset_hash
  activate :asset_host, host: ''
  activate :minify_css
  activate :minify_javascript
end
