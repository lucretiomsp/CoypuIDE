accessing
initKeys
	"create the keys that will be associated to buttons"

	| keys |
	keys := #( Q W E R T A S D F G ).
	keys do: [ :eachKey |
		self addButton: MfMixingButtonElement new key: eachKey ].
	self initEventListeners