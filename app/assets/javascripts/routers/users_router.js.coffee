class MoviesRails.Routers.Users extends Backbone.Router
  routes:
    'login' : 'login'

  login: ->
    view = new MoviesRails.Views.UsersIndex();
    $('.main-container').html(view.render().el);
