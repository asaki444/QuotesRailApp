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
                <a href="localhost:300/quotes/${this.id}">See Quote </a>
            `)
        }
    }
