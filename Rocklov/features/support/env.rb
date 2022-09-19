require "capybara"          #aplicação
require "capybara/cucumber" #importação da aplicação para o PJ
require "faker"             #importação da biblioteca para o pj

#configuração do capybara no projeto para utilizar o chrome.
Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end