configure :development do
  activate :livereload
end

configure :build do
  activate :asset_hash
  activate :asset_host, host: ''
  activate :minify_css
  activate :minify_javascript
end
