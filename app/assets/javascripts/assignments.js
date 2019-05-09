class Assignment {
  constructor(obj) {
    this.id = obj.id
    this.title = obj.title;
    this.description = obj.description;
  }

  showAssignment(){
    return(
        `<div>
          
          <p>
            <strong>Title:</strong>
            ${this.title}
          </p>

          <p>
            <strong>Description:</strong>
            ${this.description}
          </p>
          <a href="${this.id}/edit" > Edit</a>
          <a href="../assignments" > Back</a>
          
        </div>`
    )
  }

}