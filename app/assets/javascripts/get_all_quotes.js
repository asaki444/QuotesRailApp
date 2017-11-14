  $.get('/quotes.json').done(function(data){
      let text = "";
      for (let i = 0; i < data.data.length; i++) { 
        data.data[i].attributes.id = data.data[i].id
        const quote = new Quote(data.data[i].attributes);
        text += quote.formatQuote();
      }
         
      $("div#quotes").html(text);
    })