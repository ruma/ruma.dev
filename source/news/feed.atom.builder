xml.instruct!
xml.feed xmlns: "http://www.w3.org/2005/Atom" do
  xml.title "This Week in Ruma"
  xml.id full_url_for(blog.options.prefix)
  xml.link href: full_url_for(blog.options.prefix)
  xml.link href: full_url_for(current_page.url), rel: "self"
  xml.updated(blog.articles.first.date.to_s(:iso8601))
  xml.author do
    xml.name "Jimmy Cuadra"
  end

  blog.articles[0..5].each do |article|
    xml.entry do
      timestamp = article.date.iso8601
      url = full_url_for(article.url)

      xml.title article.title
      xml.link rel: "alternate", href: url
      xml.id url
      xml.published timestamp
      xml.updated timestamp
      xml.author do
        xml.name "Jimmy Cuadra"
      end
      xml.content article.body, type: "html"
    end
  end
end
