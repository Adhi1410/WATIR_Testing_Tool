require 'watir'
browser = Watir::Browser.new :chrome, options: {detach:true}
browser.goto "https://www.google.co.in"
if browser.title.include? "Google"
	browser.text_field(class: "gsfi").set "Manual Testing"
	browser.button(name: "btnK").click
	if browser.text.include? "Manual testing software testing process in which test cases are executed"
		puts "Title of webpage "+ browser.title
	else
		puts "Wrong result found"
		end
else
	puts "Either you are on wrong page or page not found"
	end
browser.img(src:"/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png").click
browser.link(class: "gb_d").click
puts "Now title of webpage "+ browser.title
#browser.close
puts "Test Executed Successfully"