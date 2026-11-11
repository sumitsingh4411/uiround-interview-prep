# GitHub renders <details><summary>…</summary> blocks as written. kramdown, which builds this site, would read
# the summary as a block and lose its closing tag, so the build marks each summary as one line of text.
# The Markdown files stay exactly as GitHub shows them.
Jekyll::Hooks.register :pages, :pre_render do |page|
  next unless page.content.include?("<summary>")
  page.content = page.content
    .gsub("<details><summary>", "<details>\n<summary>")
    .gsub("<summary>", '<summary markdown="span">')
end
