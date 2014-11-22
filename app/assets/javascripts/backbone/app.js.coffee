GifCube = do (Backbone, Marionteet) ->

	App = new Marionette.Application

	App.addRegions
	  navRegion: '#nav'
	  mainRegion: '#main'

	App.addInitializer ->
	  App.module('Nav').start()

	App.on 'before:start', (options) ->
      App.environment = options.environment

    App.on 'start', (options) ->
      Backbone.history.start({pushState: true}) if Backbone.history

    App