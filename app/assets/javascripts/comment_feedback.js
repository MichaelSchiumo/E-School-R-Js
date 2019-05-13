class Comment {
    constructor(obj) {
      this.id = obj.id
     // this.title = obj.title;
      this.description = obj.body;
    }

    showcomment_feedbacks(){
        return(
            `
                ${this.description}</br>
              `
        )
    }
}

