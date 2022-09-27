namespace :dev do
  desc "Configuração do dev environement"
  task setup: :environment do
    if Rails.env.development? 
      show_spinner("Apagando Banco De Dados" ) {  %x(rails db:drop) }
      show_spinner("Criando Banco De Dados") {  %x(rails db:create) }
      show_spinner("Configurando Banco De Dados") { %x(rails db:migrate) }
      %x(rails dev:add_mining_types)
      %x(rails dev:add_coins)
    else
      puts "Você Não Está Em ambiente De Desenvolvimento"
    end
  end

  
  desc "Cadastro De Dados"
  task add_coins: :environment do
    show_spinner("Populando Banco") do
      coins = [ 
        {
            description: "Bitcoin",
            acronym: "BTC",
            url_image: "https://bitcoin.org/img/icons/opengraph.png?1662473327",
            mining_type: MiningType.where(acronym: "PoW").first
        },
        {
            description: "Ethereum",
            acronym: "ETH",
            url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/1257px-Ethereum_logo_2014.svg.png",
            mining_type: MiningType.all.sample
        },
        {
            description: "Dash",
            acronym: "DASH",
            url_image: "https://cryptologos.cc/logos/dash-dash-logo.png",
            mining_type: MiningType.all.sample
        }
      ]

      coins.each do |coin|
          Coin.find_or_create_by!(coin)
      end

    end
  end

  desc "Cadastro de miningTypes"
  task add_mining_types: :environment do
    show_spinner("Populando tipos de mineração ") do
      mining_types = [
        {
          description: "Cloud Mining",
          acronym: "PoW"
        },
        {
          description: "Hardware Mining",
          acronym: "PoW"
        },
        {
          description: "Pool Mining",
          acronym: "mineração"
        }
      ]

      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)
      end
    end
  end


  private 

  def show_spinner(msg_inicio, msg_final = "Concluido")

    spinner = TTY::Spinner.new("[:spinner] #{msg_inicio}...")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_final})")
  end

end
