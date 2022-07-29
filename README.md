## Pré-requisitos

Antes de instalar a aplicação propriamente dita, é necessário garantir que todos os pré-requisitos 
sejam atendidos. Atualmente apenas sistemas operacionais Linux são suportados, visto que este é o 
ambiente de execução do modelo Newave.

### Versão do Python

Para o uso da aplicação é necessário ter uma instalação local do `python3` em versão superior ou igual à 3.7 e também do pacote para criação de ambientes virtuais. Na maioria das distribuições linux este recebe o nome de `python3-venv`.

Caso o script de instalação não detecte a instalação do Python, este irá interromper sua execução. Caso haja problemas com o pacote de criação de ambientes virtuais, será exibido o erro, que na maioria das distribuições orienta o comando necessário para instalação.

Uma das etapas finais do script é copiar o executável que serve de atalho para a aplicação para um diretório no `PATH` do sistema. Isto pode ser personalizado por cada usuário final, sendo que o valor default é em `/usr/bin`.

### Versão do R

A versão do R mínima suportada é a 4.1. Instruções para instalação da versão mais recente podem ser 
encontradas [aqui](https://vps.fmvz.usp.br/CRAN/). É possível verificar que a versão correta está 
instalada com

```
R --version
```

Que deve retornar um output similar a

```sh
#> R version 4.1.0 (2021-05-18) -- "Camp Pontanezen"
#> Copyright (C) 2021 The R Foundation for Statistical Computing
#> Platform: x86_64-w64-mingw32/x64 (64-bit)
#> 
#> R is free software and comes with ABSOLUTELY NO WARRANTY.    
#> You are welcome to redistribute it under the terms of the    
#> GNU General Public License versions 2 or 3.
#> For more information about these matters see
#> https://www.gnu.org/licenses/.
```

### Dependências de sistema

Uma vez instalado o R na versão apropriada, o usuário deve garantir que algumas dependências de 
sistema estejam presentes. Estas dependências não são instaláveis automaticamente pelo próprio R 
durante a instalação de pacotes e devem estar presentes para compilação dos mesmos. Em sistemas 
operacionais Ubuntu, por exemplo, a instalação deve ser realizada com

```sh
sudo apt install make gcc gfortran libpq-dev liblapack-dev libblas-dev
```

## Instalação

Para instalação da aplicação, o usuário deve obter uma cópia do repositório na branch *master* por 
qualquer meio que julgar mais conveniente (clone, download de zip etc). Note que este repositório contém submodulos, de modo que sua clonagem deve ser feita via

```
~$ git clone --recurse-submodules https://github.com/lkhenayfis/eolicas-newave.git
```

Dentro do repositório se encontra o um shell script denominado *install.sh*, responsável pela 
instalação da aplicação. Para executá-lo, o usuário deve navegar pelo terminal até a raiz do 
repositório e executar o comando

```sh
sudo ./install.sh
```

O script *eolicas-newave-dados* executa os programas em R através de uma chamada 
simples da ferramente *Rscript*. Caso existam múltiplas instalações de R na máquina, é recomendável
que o usuário modifique esta linha com o qualificador de caminho completo até uma versão adequada.

## Desinstalação

Caso seja desejado eliminar os arquivos de instalação do módulo, pode ser usado o script de desinstalação, existente no mesmo repositório:
```sh
sudo ./uninstall.sh
```

## Execução

Um conjunto de dados teste para execução do aplicativo pode ser obtido [aqui](https://drive.google.com/file/d/179yOqmcevFtwDHjzEjtvNKBtfE2W58uz/view?usp=sharing). Similarmente, um deck exemplo de Newave para manipulacao pode ser obtido [aqui](https://drive.google.com/file/d/1kfoQYU-7HsIa4ihWFo4-FXDL6uL5sV6C/view?usp=sharing).

Desconpactando o zip *test_data.zip* e salvando o deck base no diretório *home*, a execução completa do aplicativo é realizada simplesmente através do comando

```sh
~$ eolicas-newave deck_newave_base.zip
```

Caso o usuário deseje passar um arquivo de configuração para a parte de dados

```sh
~$ eolicas-newave arquivo_conf deck_newave_base.zip
```

Informações detalhadas a respeito deste arquivo de configuração e uso de cada parte do aplicativo
podem ser encontrados 

* [eolica-newave-dados](https://github.com/lkhenayfis/eolicas-newave-dados/wiki)
* [eolica-newave-deck](https://github.com/rjmalves/eolicas-newave-deck/wiki)