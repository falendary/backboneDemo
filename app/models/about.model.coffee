class About extends Backbone.Model

    defaults:
        title: "hello"
        description: "Backbone"

class Description extends Backbone.Collection

    model: About
    url: 'data/about.json'

    initialize: ->

        @fetch {
            success: @fetchSuccess
            error: @fetchError
        }

    fetchSuccess: (collection, response) ->

        # console.log("Collection fetch success", response)
        # console.log("Collection models", collection.models)

    fetchError: (collection, response) ->

        throw new Error "About fetch error"