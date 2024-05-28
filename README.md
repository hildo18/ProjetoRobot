## Automacao WEB
Este é um repositório que contém a automação de alguns testes WEB. Os sub-tópicos abaixo descrevem algumas ações tomadas na estrutução do projet
## Tecnologias utilizadas

- Robot   
  https://www.oracle.com/br/java/technologies/downloads/

- Selenium Library 
  https://mvnrepository.com/artifact/io.rest-assured/rest-assured/4.4.0


## Notas Gerais

- Será necessário ter o Python instalado na máquina, versão 3.9 ou superior
- Após instalar o Python, será preciso instalar o robot framework. No cmd digite o comando pip install robotframework
- Após instalar o robot, será necessário instalar o selenium library, através do comando: pip install --upgrade    robotframework-seleniumlibrary
- Como editor padrão de código, recomendo baixar e instalar o visual studio code, através do link: https://code.visualstudio.com/download
- Após download e instalação, no menu esquerdo do visual studio code, selecionar a opção extensions e instalar o plugin "robot framework language server" da Robocop
- Feito isso, agora é só abrir o projeto, depois acessar o terminal do visual studio code.
- Digitar o comando no terminal para executar o teste:  robot -d .\results  -i regressivo  '.\tests\cadastro_testes.robot'  
  '-d' => criar uma pasta para guardar o resultado
  '-i' => executar por tags
  'regressivo' => nome da tag
  ''.\tests\cadastro_testes.robot'' => caminho do script de teste
- Foi utilizado também o formato Gerkin para descrever os testes.


## Plano de Testes

**Informações Gerais:**
Um Plano de testes para clarificar a todos os envolvidos o que será testado
Identificador único: #3123
Orgalização Responsável: Hildo Quality
Aprovadores: Hildo

**Contexto do Teste**
*Escopo(funcionalidades):*
- Enviar contato válido
- Enviar contato inválido


**Critérios de conclusão:**
100% dos incidentes com prioridade média e alta corrigidos.

**Entregáveis:**
- Casos de teste
- Plano de teste
- Relatório
- Scripts de teste

**Cronograma:**
28 de maio de 2024