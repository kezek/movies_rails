window.MoviesRails =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new MoviesRails.Routers.Users()
    Backbone.history.start()

$(document).ready ->
  MoviesRails.initialize()
