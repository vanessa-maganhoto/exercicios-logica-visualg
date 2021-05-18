algoritmo "CorrigindoProvasVersao2"
var
   nq,na, i, j,s:Inteiro
   m: Real
   gabarito:vetor [1..20] de Caractere
   nomes: vetor [1..20]de Caractere
   nAcertos:vetor [1..20] de Inteiro
   gabAlunos: vetor [1..20, 1..20] de Caractere
inicio

   EscrevaL ("---------------------")
   EscrevaL ("Cadastro de Gabarito")
   EscrevaL ("---------------------")
   EscrevaL ("Qual o numero de questoes:    ")
   Leia (nq)



   Para i <- 1 ate nq faca
      Escreva ("Resposta questao  ",i)
      Leia (gabarito[i])
   fimPara

   EscrevaL ("Qual o numero de alunos:  ")
   Leia (na)


   Para i <- 1 ate na faca
        EscrevaL ("Nome do aluno(a):  ",i)
        Leia (nomes[i])
        nAcertos[i]<-0
        Para j<- 1 ate nq faca
             EscrevaL ("Resposta do aluno ", (nomes[i]), " para a questao ", j)
             Leia (gabAlunos [i,j])
             Se (gabAlunos [i,j]) = (gabarito[j])entao
                nAcertos[i] <- nAcertos[i] + 1
             fimSe
             
        
        fimPara
   fimPara
   
   Para i<- 1 ate na faca
        Escreval("O numero de acertos do(a) aluno(a)  ",nomes[i]," e igual a ", nAcertos[i], " acertos")
   fimPara

   s<-0
   Para i<- 1 ate na faca
        s<- s + nAcertos[i]
   fimPara
   
   m <- s/na
   EscrevaL ("A media de acertos da turma e  ", m:2:1)
fimalgoritmo





























