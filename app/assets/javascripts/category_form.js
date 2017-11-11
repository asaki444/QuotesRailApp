  
 
    $('form').submit(function(event) {
      event.preventDefault();
       var values = $(this).serialize();
 
       var category = $.post('/categories', values);
      
       category.done(function(data) {
        let cat = new Category(data)
        let quote = new Quote(data.data.attributes["formatted-quotes"][0])
        
        $("div#category").html(cat.render() + quote.formatQuote()) 
      });
    });
