## Markdown as a Service

Pass the [Markdown](http://daringfireball.net/projects/markdown/) text you want to format in the `text` request parameter.

All other parameters are optional. If any of the following parameters have a
value of `1` they will be enabled.

  * <tt>:smart</tt> - Enable SmartyPants processing.
  * <tt>:filter_styles</tt> - Do not output <tt>&lt;style&gt;</tt> tags.
  * <tt>:filter_html</tt> - Do not output any raw HTML tags included in
    the source text.
  * <tt>:fold_lines</tt> - RedCloth compatible line folding (not used).
  * <tt>:generate_toc</tt> - Enable Table Of Contents generation
  * <tt>:no_image</tt> - Do not output any <tt>&lt;img&gt;</tt> tags.
  * <tt>:no_links</tt> - Do not output any <tt>&lt;a&gt;</tt> tags.
  * <tt>:no_tables</tt> - Do not output any tables.
  * <tt>:strict</tt> - Disable superscript and relaxed emphasis processing.
  * <tt>:autolink</tt> - Greedily urlify links.
  * <tt>:safelink</tt> - Do not make links for unknown URL types.
  * <tt>:no_pseudo_protocols</tt> - Do not process pseudo-protocols.

Use it:

    curl -F text=@file.md -F smart=1 http://markdown.herokuapp.com/

## Credits

This little tool was created by [Michael Jackson](http://twitter.com/mjackson).

Thanks to Guillermo Rauch for [the idea](http://www.devthought.com/2012/03/13/bash-as-a-service/),
John Gruber for [Markdown](http://daringfireball.net/projects/markdown/), David Parsons for [Discount](http://www.pell.portland.or.us/~orc/Code/discount/), Ryan Tomayko for [RDiscount](https://github.com/rtomayko/rdiscount), and the entire [Sinatra](http://www.sinatrarb.com) [crew](https://github.com/sinatra/sinatra/contributors) for being awesome.

You're free to browse [the source](http://github.com/mjijackson/markdown).
