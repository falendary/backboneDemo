class Student extends Backbone.Model


class Students extends Backbone.Collection

    model: Student
    url: 'data/rating.json'

    initialize: ->

        @fetch {
            async: false
            success: @fetchSuccess
            error: @fetchError
        }

    fetchSuccess: (collection, response) ->

        # console.log("Collection fetch success", response)
        # console.log("Collection models", collection.models)

    fetchError: (collection, response) ->

        throw new Error "Rating fetch error"