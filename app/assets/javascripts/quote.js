    class Quote {
            constructor(data) {
            this.text = data.attributes.text 
            this.author = data.attributes.author
            this.id = data.attributes.id
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
        const quote = new Quote(data.data[i]);
        text += quote.formatQuote();
      }
         
      $("div#quotes").html(text);
    })