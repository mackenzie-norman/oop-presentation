library(R6)
Pet <- R6Class("Pet",
  public = list(
    name = NULL,
    favorite_food = NULL,
    initialize = function(name = "Bram", fav_food = "Pet Food") {
      self$name <- name
      self$favorite_food <- fav_food
    },

    print = function() {
      cat(paste0("The pets name is ", self$name, "\n"))
    },
    plot = function(){
      #draw the name at 10,10
      text(10,10, self$name)
    }

  )
)

Cat <- R6Class("Cat",
    inherit = Pet,
    public = list(
        color = NULL,
        initialize = function(name = "Bram", favorite_food = "Chickenm", color = NA) {
            super$initialize(name, favorite_food)
            self$color <- color
        }
    )
)
