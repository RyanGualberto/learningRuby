module ApplicationHelper
    def data_br(data_us)
        data_us.strftime("%d/%m/%y")
    end
    def nome_aplicacao
        "CRYPTO WALLET APP"
    end 
    def ambiente_rails 
        if Rails.env.development?
            "Desenvolvimento"
            elsif
                Rails.env.production?
                "Produção"
            else 
                "Teste"

            end
        end

end
