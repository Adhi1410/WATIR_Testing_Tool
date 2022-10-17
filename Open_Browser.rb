require 'watir'

browser = Watir::Browser.new :chrome, options: {detach:true}
browser.goto 'watir.com'

link = browser.link(href: /guides/)
link.href == 'http://watir.com/guides/' # => true
link.click

#browser.close