library(R6)

Person <- R6Class("Person",
  public = list(
    name = NULL,
    initialize = function(name = NA,) {
      self$name <- name
    },
    greet = function() {
      cat(paste0("Hello, my name is ", self$name, ".\n"))
    }
  )
)
Max <- R6Class("Max",
inherit = Person,
public = list(
    cool_hair = NULL,
    initialize = function(name = NA, hair = NA) {
        self$cool_hair  <- cat(paste0("Cool  ", hair))
        super$initialize(name)
    },

    plot = function(){
        plot(list(1,1),list(10,0))
    }

)

)




