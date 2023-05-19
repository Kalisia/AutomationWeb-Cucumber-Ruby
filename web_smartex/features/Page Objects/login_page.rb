class LoginPage < SitePrism::Page
    set_url 'https://www.saucedemo.com/'

    def login_user
        find(:xpath, '//*[@id="user-name"]').set 'standard_user'
        find(:css, '#password').set 'secret_sauce'
        find(:xpath, '//*[@id="login-button"]').click
    end

    def login_user_error
        find(:xpath, '//*[@id="user-name"]').set 'standard_user'
        find(:css, '#password').set 'secret'
        find(:xpath, '//*[@id="login-button"]').click
    end

    def blank_login
        find(:xpath, '//*[@id="login-button"]').click
    end
    
end
