    class Quote {
            constructor(data) {
            this.text = data.text 
            this.author = data.author
            this.id = data.id
        }

        formatQuote() {
            return (`
                <h3> ${this.text} </h3>
                <h4> - ${this.author}</h4> 
                <a href="quotes/${this.id}">See Quote </a>
            `)
        }
    }
    
   $.get('/quotes.json').done(function(data){
      let text = "";
      for (let i = 0; i < data.data.length; i++) {
        const quote = new Quote(data.data[i].attributes);
        text += quote.formatQuote();
      }
         
      $("div#quotes").html(text);
    })