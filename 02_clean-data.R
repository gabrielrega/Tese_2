# Technically correct data -------------------------
# Fonte: https://cran.r-project.org/doc/contrib/de_Jonge+van_der_Loo-Introduction_to_data_cleaning_with_R.pdf
 
DT %>% 
  as_tibble() %>% 
  mutate(BAIRRO = as.factor(BAIRRO)) %>% 
  mutate(CEP = as.factor(CEP)) %>% 
  mutate(MUNICÍPIO = as.factor(MUNICÍPIO)) %>% 
  mutate(BANDEIRA = as.factor(BANDEIRA))

# Consistent data --------------------------------

estados <- data.frame(nomes = c("Acre", "Alagoas","Amapá","Amazonas","Bahia","Ceará","Distrito Federal",
                                "Espírito Santo","Goiás","Maranhão","Mato Grosso","Mato Grosso do Sul",
                                "Minas Gerais","Pará","Paraíba","Paraná","Pernambuco","Piauí",
                                "Rio de Janeiro","Rio Grande do Norte","Rio Grande do Sul","Rondônia",
                                "Roraima","Santa Catarina","São Paulo","Sergipe","Tocantins"),
                      siglas = c("AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", 'MA', 'MT', 'MS', 'MG', 'PA',
                                 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'))

# estados estão com siglas e nomes
# tirar acentos pode juntar grafias erradas
# buscar por soluções comuns de limpeza estilo OpenRefine
# criar coluna com latitude longitude?
# criar identificador unico para cada posto (latitude + nome?)