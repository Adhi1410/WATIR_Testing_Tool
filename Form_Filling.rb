require 'watir'
browser = Watir::Browser.new :chrome, options: {detach:true}
browser.goto "http://watir.com/examples/forms_with_input_elements.html"
 
#Here we will see how to insert data in text field.
t1=browser.text_field id: 'new_user_first_name'
t1.set "Testing"
t2=browser.text_field id: 'new_user_last_name'
t2.set "testdata"
 
#Here we will see how to select data from select list.
sl=browser.select_list id: 'new_user_languages'
sl.select 'English'
sl.selected_options
 
#Here we will see how to select radio button.
rd=browser.radio value: 'no'
rd.set
chk=browser.checkbox value: 'cars'
chk.set
 
#Here we will see how to click button.
btn=browser.button name: 'new_user_button_2'
btn.click
 
#This is an Explicit wait statement. This statement will make the program wait #until the particular event happens.
Watir::Wait.until {browser.text.include? 'submit'}

# Here I used this if statement  because this is a test webpage and nothing is #happening after clicking the button. So just to show that button is clicked I used If #statement.
if browser.text.include? "submit"
puts "Data Submitted"
else
puts "Data not yet submitted"
end
 
# This is an implicit wait statement. It will make your program to wait for 30 seconds compulsory.
browser.driver.manage.timeouts.implicit_wait = 30
 
# You can send special keys to browser. There is a big list of these keys. 
browser.send_keys :page_up
browser.send_keys :page_up
 
#Here we are taking the screenshot and saving it in a png file.
browser.screenshot.save 'screenshot1.png'
 
browser.send_keys :page_down
browser.send_keys :page_down
browser.send_keys :page_down
browser.send_keys :page_down
browser.screenshot.save 'screenshot2.png'
 
puts "TestCase Executed"
#browser.close