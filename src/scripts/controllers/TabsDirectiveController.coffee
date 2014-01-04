class TabsDirectiveController
	constructor: ->
		@tabs = []

		@select = (tab) =>
			tab.transcluded = true

			return if tab.selected is true

			angular.forEach @tabs, (tab) ->
				tab.selected = false

			tab.selected = true

		@addTab = (tab) =>
			tab.transcluded = true

			@select tab if @tabs.length is 0
			@tabs.push tab