class AboutView extends Backbone.View

    el: $ '#workarea'

    initialize: ->
        _.bindAll(@, 'render')

        @collection = new Description

        # console.log(@collection)
        # @collection.fetch()

    render: ->
        templateEl = $ "#about_template"
        template = _.template templateEl.html(), {}
        _.each(@collection.models, (data)->
            # console.log(data.toJSON());
            $(@el).html(template(data.toJSON()))
        , @)
        

about_view = new AboutView