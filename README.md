# Notebook

Um pequeno projeto c/ [Rails](http://rubyonrails.org/).

![frontend-scshot](../master/scshot/frontend-scshot.png)

## Instalação

### Pré-requisitos

Ter instalado localmente (apenas p/ Desenvolvimento e Teste):
- [Git](https://git-scm.com/)
- [Ruby](https://ruby-lang.org)
- [Bundle](http://bundler.io/)
- [RubyGems](https://rubygems.org/)
- [Rake](https://github.com/ruby/rake)
- [Rails](http://rubyonrails.org/)

### Instalando dependências

```bash
$ git clone https://github.com/raulpereira/notebook.git
$ cd notebook
$ bundle install --without production
$ rake db:migrate db:seed
```

## Subir & Rodar

### Ambiente de desenvolvemento

```bash
$ rails s
```
![dsv-scshot](../master/scshot/dsv-scshot.png)

### Ambiente de teste

`Todos os testes precisam ser feitos` :disappointed_relieved:

### Ambiente de produção

Acesse => *[https://notebook-rp.herokuapp.com/](https://notebook-rp.herokuapp.com/)* :clap:

## Considerações

### Plataforma

**[Rails](http://rubyonrails.org/)**: Escolhido para estudar o potencial da plataforma.

### Backend

#### Web Server

**[Puma.io](http://puma.io/)**: É a escolha padrão da plataforma, na versão utilizada ([5.0.2](http://weblog.rubyonrails.org/2017/3/1/Rails-5-0-2-has-been-released/)), além de ser indicado pelo local que será hospedado em produção.

#### Banco de dados

**[SQlite](https://sqlite.org/)**: Utilizado por já vir embarcado na plataforma e facilitar o desenvolvimento local. 

**[PostgreSQL](https://www.postgresql.org/)**: Escolhido por ser indicado pelo local que será hospedado em produção.

### Frontend

**[HTML](https://w3.org/html/)** + **[CSS](https://w3.org/Style/CSS/)** (c/ **[Bootstrap](http://getbootstrap.com/)**) + **[JS](https://developer.mozilla.org/en-US/docs/Web/JavaScript)** (c/ **[CoffeeScript](http://coffeescript.org/)** + **[jQuery](https://jquery.com/)**): Não usei nenhuma plataforma para implementar a esta camada, apenas bibliotecas facilitadoras.

### Testes

`Será o foco dos próximos estudos, falta grave...` :disappointed_relieved:

### Servidores de produção

**[Heroku](https://heroku.com)** (PAAS): Escolhido por ter suporte grátis para aplicações [Rails](http://rubyonrails.org/), além de ter uma boa integração com o [GitHub](https://github.com/).

## Conclusão

Muito feliz com a produtividade desta plataforma, este projeto é fruto de um novo treinamento em cima dela e irá progredir conforme a evolução nos estudos.

**AVANTE MOÇADA!** :muscle:
