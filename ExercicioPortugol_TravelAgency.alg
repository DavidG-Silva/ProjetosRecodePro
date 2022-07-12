Algoritmo "TravelAgency"
//
//
// Descrição   : Sistema de cadastro de clientes e destinos para a TravelAgency
// Autor(a)    : David Silva (CrazyPanda)
// Data atual  : 11/7/2022
//
//
Var
// Declaraçao das variaveis que serao utilizadas
   contcli, contdest: inteiro  // contador limitante da base
   i, j: inteiro
   cliente: vetor [1..5,1..3] de caracter  // base de clientes limitado a cinco
   destino: vetor [1..5,1..2] de caracter  // base de destinos limitado a cinco
   respmenu: caracter


// Procedimento para impressao do menu na tela
procedimento menu()
inicio
   Escreval("======= TRAVEL AGENCY ========")
   Escreval("")
   Escreval("    # Menu do sistema #")
   Escreval("[1] - Cadastrar novo cliente")
   Escreval("[2] - Cadastrar novo destino")
   Escreval("[3] - Consultar base de clientes")
   Escreval("[4] - Consultar base de destinos")
   Escreval("[0] - SAIR")
   Escreval("------------------------------")

   Escreva("Informe uma opçao: ")
   Leia(respmenu)

   ENQUANTO ((respmenu <> "1") E (respmenu <> "2") E (respmenu <> "3") E (respmenu <> "4") E (respmenu <> "0")) FAÇA
      Escreval("!! Digite uma opçao valida !!")
      Escreva("Informe uma opçao: ")
      Leia(respmenu)
   FIMENQUANTO
fimprocedimento


// Procedimento para inclusao de clientes na base
procedimento cadastra_cliente()
inicio
   Escreval("Cadastrando novo cliente:")
   SE contcli >= 6 ENTAO      // Contador limitante, para que nao gere erros
      Escreval("!! Base de dados cheia !!")
      Escreval("Nao e possivel cadastrar novos clientes.")
   SENAO
      Escreva("Nome do cliente: ")
      Leia(cliente[contcli,1])
      Escreva("Localizaçao do cliente [Cidade / UF]: ")
      Leia(cliente[contcli,2])
      Escreva("Idade do cliente: ")
      Leia(cliente[contcli,3])
      contcli <- contcli + 1
      Escreval("Cliente cadastrado com sucesso!")
   FIMSE
   Escreval("")
fimprocedimento


// Procedimento para inclusao de destinos na base
procedimento cadastra_destino()
inicio
   Escreval("Cadastrando um novo destino:")
   SE contdest >= 6 ENTAO       // Contador limitante, para que nao gere erros
      Escreval("!! Base de dados cheia !!")
      Escreval("Nao e possivel cadastrar novos destinos.")
   SENAO
      Escreva("Destino [Cidade / UF]: ")
      Leia(destino[contdest,1])
      Escreva("Valor da passagem: ")
      Leia(destino[contdest,2])
      contdest <- contdest + 1
      Escreval("Destino cadastrado com sucesso!")
   FIMSE
   Escreval("")
fimprocedimento


// Procedimento para imprimir a base de clientes na tela
procedimento consulta_cliente()
inicio
   Escreval("Base de clientes:")
   Escreval("Nome                Cidade/UF           Idade")
   PARA i de 1 ate 5 FAÇA
      PARA j de 1 ate 2 FAÇA
         Escreva(cliente[i,j]:20)
      FIMPARA
      Escreval(cliente[i,3])
   FIMPARA
   Escreval("")
fimprocedimento


// Procedimento para imprimir a base de destinos na tela
procedimento consulta_destino()
inicio
   Escreval("Base de destinos disponiveis:")
   Escreval("Destino             Valor (R$)")
   PARA i de 1 ate 5 FAÇA
      Escreva(destino[i,1]:20)
      Escreval(destino[i,2])
   FIMPARA
   Escreval("")
fimprocedimento



Inicio
   contcli <- 1
   contdest <- 1

   menu()

   ENQUANTO respmenu <> "0" FAÇA
      ESCOLHA respmenu
      CASO "1"
         cadastra_cliente()
         menu()
      CASO "2"
         cadastra_destino()
         menu()
      CASO "3"
         consulta_cliente()
         menu()
      CASO "4"
         consulta_destino()
         menu()
      FIMESCOLHA
   FIMENQUANTO

   Escreval("Voce escolheu sair.")
   Escreval("Obrigado por utilizar nosso sistema!")



Fimalgoritmo