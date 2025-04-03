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
    plot = function() {
      # draw the name at 10,10
      plot(1:20, 1:20, main = text(10, 10, self$name))
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
    },
    print = function() {
      cat(paste0(super$print(), "It is a ", self$color, " cat. \n"))
    }
  )
)


# now lets use these classes
pet1 <- Pet$new("Walter", "fish")
pet2 <- Pet$new()

cat1 <- Cat$new("Bramble", "Chicken", "Black")
cat2 <- Cat$new("Susie", "Chicken", "Black")

# Now lets see what this prints
for (pet in list(pet1, pet2, cat1, cat2)) {
  print(pet)
}
