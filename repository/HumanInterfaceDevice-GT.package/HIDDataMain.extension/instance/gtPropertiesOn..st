*HumanInterfaceDevice-GT
gtPropertiesOn: aComposite
	<gtInspectorPresentationOrder: 0>
	aComposite list
		title: 'Properties';
		display: [ 
		(#(#isConstant
		#isVariable
		#isRelative
		#isWrapped
		#isNonLinear
		#doesNotHavePreferredState
		#hasNullState
		#hasBufferedBytes) with: #(
			#('Constant' 'Data')
			#('Variable' 'Array')
			#('Relative' 'Absolute')
			#('Wrapped' 'Not wrapped')
			#('Non linear' 'Linear')
			#('No preferred state' 'Has preferred state')
			#('Has null state' 'No null state')
			#('Has buffered state' 'No buffered state')) collect: [ :selector :array |
				[(selector value: self)
					ifTrue: [ array first ]
					ifFalse: [ array last ]
				] on: SubscriptOutOfBounds do: [ nil ] ]) reject: #isNil ]