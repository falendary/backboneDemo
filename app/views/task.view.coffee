class TaskView extends Backbone.View

    el: $ '#workarea'

    initialize: ->
        _.bindAll(@, 'render')

    render: (id)->
        id = id || 1
        data = @model.get(id)
        templateEl = $ "#task_template"
        template = _.template templateEl.html(), {}
        $(@el).html(template(data.toJSON()))

task_view = new TaskView model: tasks