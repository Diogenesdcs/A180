require "capybara"          #aplicação
require "capybara/cucumber" #importação da aplicação para o PJ
require "faker"             #importação da biblioteca para o pj

#configuração do capybara no projeto para utilizar o chrome.
Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "http://rocklov-web:3000"  #aplicando o host com o endereço do site
    config.default_max_wait_time = 10                #tempo de espera por tela 
end