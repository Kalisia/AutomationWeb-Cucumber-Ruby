When('I access the platform with success') do
    @user = LoginPage.new
    @user.load
    @user.login_user

end

Then('I can see the products') do
    @texto = find('#header_container > div.header_secondary_container > span')
    expect(@texto.text).to eq 'Products'
end

When('I login') do
    @user = LoginPage.new
    @user.load
    @user.login_user_error

end
  
Then('I do the invalid login') do
    expect(page).to have_text('Epic sadface: Username and password do not match any user in this service')
    
end
  
When('I try login without username and password') do
    @user = LoginPage.new
    @user.load
    @user.blank_login

end
  
Then('I receive a message') do
    expect(page).to have_text('Epic sadface: Username is required')
end