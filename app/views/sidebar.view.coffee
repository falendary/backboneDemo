class SidebarView extends Backbone.View

    el: $ '#workarea'

    initialize: ->
        _.bindAll(@, 'render')
        
    render: ->
        templateEl = $ "#sidebar_template"
        template = _.template templateEl.html(), {}
        aside = $ "aside.sidebar"
        aside.html(template)
        ul = $ ".tasks-list"
        ul.empty()
        _.each(@model.models, (data)->

                _data = data.toJSON()
                # console.log(_data)
                li = $ ("<li/>")
                li.addClass("task-sidebar")
                li.append("<a href='#!/task/"+_data.id+"' data-movie='"+_data.video_available+"'>"+_data.title+"</a>")
                ul.append(li)
            , @)

sidebar_view = new SidebarView model: tasks