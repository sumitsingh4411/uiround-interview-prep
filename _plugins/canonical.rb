# Each file in questions/ is a free question from UIRound. Its page points search engines at the original
# on uiround.com, which has the editor and tests, so the two never compete in search results.
Jekyll::Hooks.register :pages, :post_init do |page|
  match = page.relative_path.match(%r{\Aquestions/[^/]+/\d+-(.+)\.md\z})
  page.data["canonical_url"] ||= "https://uiround.com/questions/#{match[1]}" if match
end
