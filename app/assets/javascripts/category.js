       function Category(data){
         this.name = data.name
       }
       Category.prototype.render = function(){
         return (`
           <h2>${this.name}</h2>
           <button>Show Quotes</button>
         `)
       }

       

      $.get(window.location.pathname + ".json").done(data => {
       
        const category = new Category(data.data.attributes);
        $("div#category_name").html(category.render());

        $("div#category_name").on('click', 'button', () => {
         $( "button" ).remove();
          for(var i = 0; i < data.data.attributes["formatted-quotes"].length; i++){
            const quote =  new Quote(data.data.attributes["formatted-quotes"][i])
             $("div#category_name").append(quote.formatQuote());
          }
         
        })
       })
