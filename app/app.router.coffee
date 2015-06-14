class appRouter extends Backbone.Router

	routes:
		"!/task/:id": "task"
		"!/rating": "rating"
		"!/about": "about" 
		"*path": "defaultRoute"
		"": "defaultRoute"

	defaultRoute: ->
		task_view.render()
		sidebar_view.render();


app_router = new appRouter

app_router.on("route:task", (id)->
		task_view.render(id)
		sidebar_view.render();
	)
app_router.on("route:rating", ->
		rating_view.render()
		sidebar_view.render();
	)

app_router.on("route:about", ->
		about_view.render()
		sidebar_view.render();
	)

Backbone.history.start()