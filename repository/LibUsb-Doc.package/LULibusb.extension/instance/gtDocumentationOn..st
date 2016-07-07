*LibUsb-Doc
gtDocumentationOn: composite
	<gtInspectorPresentationOrder: 1>
	^ (composite table)
			title: 'High-level to low-level';
			display: [ (PragmaType all detect: [ :pragma |
								pragma name = #libusbHighlevelFor:]) pragmas
									collect: #method ];
			column: 'High-level' evaluated: [ :method |
				String streamContents: [ :s |
					(method methodClass>>method selector) printOn: s ] ];
			column: 'Low-level' evaluated: [ :method |
				String streamContents: [ :s |
					(LULibusb>>(method pragmaAt: #libusbHighlevelFor:) arguments first) printOn: s ] ];
			sorted: [ :methodA :methodB |
				methodA selector < methodB selector ]