class Task extends Backbone.Model


class TasksList extends Backbone.Collection

    model: Task
    url: 'data/tasks.json'

    initialize: ->

        @fetch {
            success: @fetchSuccess
            error: @fetchError
        }

    fetchSuccess: (collection, response) ->

        # console.log("Collection fetch success", response)
        # console.log("Collection models", collection.models)

    fetchError: (collection, response) ->

        throw new Error "Tasks fetch error"

tasks = new TasksList