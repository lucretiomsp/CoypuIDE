initialization
initializeEventListeners
	"add the handler that changes color when pressing a key"

	self addEventHandlerOn: BlKeyDownEvent do: [ :anEvent |
		keymap
			at: anEvent key 
			ifPresent: [ :aButton | aButton background: Color red ] ].
	self addEventHandlerOn: BlKeyUpEvent do: [ :anEvent |
		keymap
			at: anEvent key 
			ifPresent: [ :aButton | aButton background: Color darkGray ] ].
	self requestFocus