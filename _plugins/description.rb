# Gives each Markdown page its own meta description: the first paragraph under its heading, as plain text, cut to
# about 155 characters. Without it every page would share the site's description, and search results could not tell
# the pages apart. The home page (README.md) keeps the site description; a page's own front matter always wins.
Jekyll::Hooks.register :pages, :post_init do |page|
  next unless page.ext == ".md" && page.data["description"].nil? && page.relative_path != "README.md"

  paragraph = page.content.split(/\n\s*\n/).map(&:strip).find do |block|
    !block.empty? && !block.start_with?("#", "<", "|", "-", "*", ">", "!", "[!", "```", "1.")
  end
  next unless paragraph

  text = paragraph
    .gsub(/!\[[^\]]*\]\([^)]*\)/, "")      # images
    .gsub(/\[([^\]]+)\]\([^)]*\)/, '\1')   # links keep their text
    .gsub(/[*_`]/, "")                     # emphasis and code marks
    .gsub(/\s+/, " ")
    .strip
  text = "#{text[0, 152].sub(/\s+\S*\z/, '')}…" if text.length > 155
  page.data["description"] = text
end
