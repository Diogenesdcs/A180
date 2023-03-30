require "capybara"          #aplicação
require "capybara/cucumber" #importação da aplicação para o PJ
require "faker"             #importação da biblioteca para o pj
require "allure-cucumber"


CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["CONFIG"]}")) #config para carregar arquivo do ambiente yml


    ##case de navegador##criando variavel driver
case ENV["BROWSER"]
when "firefox"
    @driver = :selenium
when "chrome"
    @driver = :selenium_chrome
when "fire_headless"
    @driver = :selenium_headless
when "chrome_headless"
    @driver = :selenium_chrome_headless
else 
    raise "Navegador incorreto variavel @driver está vazia" #estoura a excessão de log ou erro
end

# selenium_headless -->para executar em linhas o firefox
# selenium -->para executar o firefox
# selenium_chrome_headless -->para executar o chrome

#configuração do capybara no projeto para utilizar o chrome.
Capybara.configure do |config|
    config.default_driver = @driver
    config.app_host = CONFIG["url"]  #aplicando o host com o endereço do site url variavel no arquivo local.yml
    config.default_max_wait_time = 10                #tempo de espera por tela 
end

AllureCucumber.configure do |config|
    config.results_directory = "/logs"      #para enviar os logs para pastas logs
    config.clean_results_directory = true   #para limpar o diretório a cada execução
end