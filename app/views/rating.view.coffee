class RatingView extends Backbone.View

    el: $ '#workarea'

    initialize: ->

        @collection = new Students
        # @collection.bind("reset")
        # @collection.fetch()

    render: ->
        # console.log(@collection)
        templateEl = $ "#rating_template"
        template = _.template templateEl.html(), {}
        $(@el).html(template)
        _.each(@collection.models, (data)->
                tbody = $ "#ratingtable tbody"
                _data = data.toJSON()
                tr = $ ("<tr/>")
                tr.append("<td>"+_data.position+"</td>")
                tr.append("<td>"+_data.name+"</td>")
                tbody.append(tr)
            , @)



rating_view = new RatingView model: Student