foo <- structure(tester :list(0), class = "foo", )
foo
new_foo <- function(x = double()) {
  structure(tester = list(x) , class = "foo")
}


foo <- new_foo(20)
#plot(foo)
test_plot <- function(x) {
    UseMethod("plot")
}
test_plot(foo)