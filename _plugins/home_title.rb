# The home page is README.md, whose heading ("UIRound: Frontend Interview Questions and Answers") would otherwise
# become its title and repeat the brand ("UIRound: ... | UIRound"). Giving it the site's own title makes jekyll-seo-tag
# print "UIRound | <tagline>" instead.
Jekyll::Hooks.register :pages, :post_init do |page|
  page.data["title"] ||= page.site.config["title"] if page.relative_path == "README.md"
end
