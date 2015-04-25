# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  # Specify a custom renderer if needed.
  # The default renderer is SimpleNavigation::Renderer::List which renders HTML lists.
  # The renderer can also be specified as option in the render_navigation call.
  # navigation.renderer = Your::Custom::Renderer

  # Specify the class that will be applied to active navigation items.
  # Defaults to 'selected'
  navigation.selected_class = 'active'

  # Specify the class that will be applied to the current leaf of
  # active navigation items. Defaults to 'simple-navigation-active-leaf'
  navigation.active_leaf_class = 'active-leaf'

  # Item keys are normally added to list items as id.
  # This setting turns that off
  navigation.autogenerate_item_ids = false

  # You can override the default logic that is used to autogenerate the item ids.
  # To do this, define a Proc which takes the key of the current item as argument.
  # The example below would add a prefix to each key.
  # navigation.id_generator = Proc.new {|key| "my-prefix-#{key}"}

  # If you need to add custom html around item names, you can define a proc that
  # will be called with the name you pass in to the navigation.
  # The example below shows how to wrap items spans.
  navigation.name_generator = Proc.new {|name, item| (item.html_options[:icon] ? icon(item.html_options[:icon]) : '') + "<span>#{name}</span>".html_safe}

  # The auto highlight feature is turned on by default.
  # This turns it off globally (for the whole plugin)
  # navigation.auto_highlight = false

  # If this option is set to true, all item names will be considered as safe (passed through html_safe). Defaults to false.
  # navigation.consider_item_names_as_safe = false

  # Define the main navigation
  navigation.items do |main|
    # Add an item to the main navigation. The following params apply:
    # key - a symbol which uniquely defines your navigation item in the scope of the primary_navigation
    # name - will be displayed in the rendered navigation. This can also be a call to your I18n-framework.
    # url - the address that the generated item links to. You can also use url_helpers (named routes, restful routes helper, url_for etc.)
    # options - can be used to specify attributes that will be included in the rendered navigation item (e.g. id, class etc.)
    #           some special options that can be set:
    #           :if - Specifies a proc to call to determine if the item should
    #                 be rendered (e.g. <tt>if: -> { current_user.admin? }</tt>). The
    #                 proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :unless - Specifies a proc to call to determine if the item should not
    #                     be rendered (e.g. <tt>unless: -> { current_user.admin? }</tt>). The
    #                     proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :method - Specifies the http-method for the generated link - default is :get.
    #           :highlights_on - if autohighlighting is turned off and/or you want to explicitly specify
    #                            when the item should be highlighted, you can set a regexp which is matched
    #                            against the current URI.  You may also use a proc, or the symbol <tt>:subpath</tt>.

    main.item :dashboard, 'Dashboard', dashboard_path, html: { icon: 'dashboard' }
    main.item :projects, 'Projects', projects_path, html: { icon: 'cubes' }
    main.item :tasks, 'Tasks', tasks_path, html: { icon: 'tasks' }
    main.item :spaces, 'Spaces', spaces_path, html: { icon: 'comments' }
    main.item :meetings, 'Meetings', meetings_path, html: { icon: 'calendar' }
    main.item :clients, 'Clients', clients_path, html: { icon: 'street-view' }
    main.item :clients, 'Contacts', contacts_path, html: { icon: 'book' }
    main.item :leads, 'Leads', leads_path, html: { icon: 'briefcase' }
    main.item :proposals, 'Proposals', proposals_path, html: { icon: 'calculator' }
    main.item :invoices, 'Invoices', invoices_path, html: { icon: 'file-text' }
    main.item :expenses, 'Expenses', expenses_path, html: { icon: 'usd' }
    main.item :timelogs, 'Timelogs', timelogs_path, html: { icon: 'clock-o' }

    main.item :settings, 'Settings', settings_path, html: { icon: 'gears' } if current_user.admin?

    # Add an item which has a sub navigation (same params, but with block)
    # main.item :key_2, 'name', url, options do |sub_nav|
      # Add an item to the sub navigation (same params again)
      # sub_nav.item :key_2_1, 'name', url, options
    # end

    # You can also specify a condition-proc that needs to be fullfilled to display an item.
    # Conditions are part of the options. They are evaluated in the context of the views,
    # thus you can use all the methods and vars you have available in the views.
    # main.item :key_3, 'Admin', url, class: 'special', if: -> { current_user.admin? }
    # main.item :key_4, 'Account', url, unless: -> { logged_in? }

    # you can also specify html attributes to attach to this particular level
    # works for all levels of the menu
    main.dom_attributes = {id: 'main-menu', class: 'sidebar-menu'}

    # You can turn off auto highlighting for a specific level
    # main.auto_highlight = false
  end
end
